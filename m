Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32E1335573
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772163893; cv=none; b=Yy76OibY6oPBi2bZr0H3h28nz6F2FIL55PxhpEP3IIsLpgo06CHq0VPePJiyV+YFgk2d7GnAc6qsCrJOZfHCC2ovp1ilMvV6HwYTCtK1fezttAz58q9tUcdTCcumMgcC71fJ8w2j81IOkjG4OulRrwxlquWTN9rx0FXGHKOhgBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772163893; c=relaxed/simple;
	bh=9LMh0yEESdymmy0Emk9q79ZOuDA4VQ946FHwYO8T0yM=;
	h=To:Subject:From:Message-Id:Date; b=JIRNehdNrzj4jn9M5kcWIgIU38T9zt6HjqXajpFI6oGyCEZANxrJa7kOqEQTHpYvSd0l9uB/S3tTOm22uS4LMhcwhAa6gl+BRjo/Ygxe0Ykm7eW07arHeYqryYBGItym8bjxnhr5e2U7oQUx+tnnXO/Wm7UEphlYg24V30i4HFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOjm9m/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOjm9m/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772163893;
	bh=9LMh0yEESdymmy0Emk9q79ZOuDA4VQ946FHwYO8T0yM=;
	h=To:Subject:From:Date:From;
	b=MOjm9m/+DJuG8Z4whmQ1Ju3Z8gHFlzWyoQXtXoZ1l3QKixH3L2PcmEm7D5LiP1UCf
	 kU2ialUvAtM1PWa8MX7eT7ExeQHzV01Jgb33vC9B5cPkIhpRtWi9kmFKsTcpMBmjEB
	 qgN7IrxDaRL8QtbJBT5WDlveHMmv+HoOTKqn820V4ngVLyEQ5CWSicLQvEOI+TSKEa
	 ZuZSunwnhs74SySfbqVw7MlbBxIrivv9u8lxyjiTdDD+oYSLqM5ktzpxxL5dllvAq4
	 3t1QCO5OKIm98ZGYkChYHfBQ3zMiAlqpXo8hUm/XQLIu8JWN5T70wnHBRdK7B+B+y+
	 BzSwg4bYBEetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A506FD9E35
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216389362.32296.3504043935881406359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca114bd1f2fc546d00f667b36e9e633ad2b8d820fbf3e47418763a8b73d0ffe
Date: Fri, 27 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772163893
