Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A3519D07E
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746296395; cv=none; b=j/KvDm2iwhqSQPEtc84I2urjYmENjZQp5lMtUUsFVbS34vtGM9uWBHTZK6jC1A1+IHQEVQdR9ET1qOXJo++diLgWDmAsp9DHhp5rBYkJnPL26C62/JFlmMIHPg33OHxk8HblDiS76uiaKUVpQ4yW+K3mwnei3mGkZ74zovcz5Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746296395; c=relaxed/simple;
	bh=hUmoXjI+g24LQPYfW+XtzQWi/nAxKHJuWOCUSFXooHg=;
	h=To:Subject:From:Message-Id:Date; b=d35XbY5ZvQI0IXhz9+SzVT5/aJUtNbEVHCRyWw9cZ+LjUTLDxRujk2LGYgkVzTgQ+UdWF739AakLbJm9lrevMrtR11e4V+PNlQANxP4aNN8s2HXMZ5rT/DOObXkk77qt7uO0Op8htA5KhkHFDWxZucd1E13EAC4K/d8y/XzaRG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu3/j7b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu3/j7b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746296394;
	bh=hUmoXjI+g24LQPYfW+XtzQWi/nAxKHJuWOCUSFXooHg=;
	h=To:Subject:From:Date:From;
	b=Iu3/j7b0TvpLQxJFw+CTg0jx5ja2kMj2erOrlLMnnv+xwpa+W1U+e45c3MP7ar09O
	 aOUcj0goUSwLiDxOp58cf8UckArznV81eH+OCsDyUAHG5GTlf2G4sXx1C1SaNAtATY
	 n5ZwO802MaTKE/DQQhmwD9mwGhx+nlyM9qqRVQPZVkch892kgFfzYfk2OA8ktTHCgB
	 IJf6IUjE2JdIKUb3/gOK3tyFM8AUXZkAtKtZdM3M8ud5jZvHvZ+UngHIoas50GVKHo
	 JON+E+3A5tjhk4EjqdkGyUTIUZHjZvVfQB9hhDkYw9Qkx5C3cLuEd3zmxsMh7Gz0rZ
	 KrsOOcKUch+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9058DC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629639357.6012.17843175668419664653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4f4e8277fba181b02984818c82e54b6dccc11411fb83191b434511d65ffafe
Date: Sat, 03 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746296393
