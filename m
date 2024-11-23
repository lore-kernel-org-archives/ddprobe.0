Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A4454654
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732383954; cv=none; b=hLaIQfy0IzfecskOfuevgweauhb9u9xBHumC9M2rOAtIzqFQILKBo04JbrdTj3xOj2R77TrdUIfa0Dr9jrz0KufShuOEWxBUfZKyZVfGy3d8LlJ/vt7i9D7yNhPbO29sXDvV7dPA93VTpHmth3pM7AL+AACsDWLLXfGJmfl7LIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732383954; c=relaxed/simple;
	bh=OYWnnVaFgdMMf9r7BluYtoE7Iw7wVJmCK5r8Hrb4XFI=;
	h=To:Subject:From:Message-Id:Date; b=gYpciDOBL7HkdNVPEnxk4S4VnccCeX6ReMh0EnNj1/TbsNsNVFRi1nk8d4In/5G17kWpj/PyqtbF+fZWkoPwjLmGQaU3hVkPUw0cv9IvuhcumStt20fmFneKa0v5o0hcxn+oIxTQYh5u61XfR0shJKXZ9uoqRt9z3nzspnENsaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF/qWn0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF/qWn0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD390C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732383953;
	bh=OYWnnVaFgdMMf9r7BluYtoE7Iw7wVJmCK5r8Hrb4XFI=;
	h=To:Subject:From:Date:From;
	b=GF/qWn0jMwDHym1ESKp7dQtzbxqFZBU0zJUfSJ1pqDlQszpmQH6wl6Mj7Gqe8UMX6
	 t8Zce9+jfDOc5r6a/RU9oSigSKWby9weU37IOQ9DhDpaRdTMpPkJTwQaHk4FvA/j3F
	 Vi7eg0g3AU3BlE1fc0g96ZXgTwzgm5kPIYF44Qb4b9c08GptyXptC+m5wLPeIaqUfy
	 QT/VSu6KgPgRtYgoHzQ7Tm8tFzut+YPpL21r7HVdovnja10snBcfZXhKZ+Ah8qWs5l
	 X2H4VhgkAfFjS2rpcTnDrJqM9XFQqHb1S9BJU0SVdW0OagsK4GNkKYjr+qkjXoRtmP
	 P/YdesecfuWEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E902D75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238395357.1989.16148715591194513680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fdf37c58a5edb93613da8f4f414c7b4360d1117224475cc928ab2390849154
Date: Sat, 23 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732383953
