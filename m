Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578232E3386
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742016534; cv=none; b=Q9BYg5TpPqu1XZEGwZOc3NrTrlC5avqP7UWGTz09zLybKqcC5S2svd4wJ9v2o5C9OS3yO/HlmskDhruFq1g7R2xd2HDQdBO/N9ZksfnTn5PuKbXfAr9ftIlreFSeakEl6R3jAb8zRiISGLdk/KtAN/ri4AS5I+EAxnMreIviM/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742016534; c=relaxed/simple;
	bh=7DY4I5XyC0VR8Cj3kT6Hmd8OpSEWVOFy9sOIC7coC+I=;
	h=To:Subject:From:Message-Id:Date; b=tDt/jIP/SfKewB+F2gxXUFh0P08yHPcZtFANYfuqcE84xM4pDmUm/7doZ7WrysqfKVe1x8YNDWUarFRQ4rjMOUPITQtZ/GSwIl7CDeinvm3gtveDUGrnbSyP9ky+cOmYZSrqs+c/8mnc4IDybNq9QBHX9VOfaW3JqA4FXFsVres=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t63tdIQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t63tdIQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B753CC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742016533;
	bh=7DY4I5XyC0VR8Cj3kT6Hmd8OpSEWVOFy9sOIC7coC+I=;
	h=To:Subject:From:Date:From;
	b=t63tdIQTv+f54d2qwphCH9VqZRaVyHRqjy1r38LSrqvW9fEblP5DY2M513bpFYa6R
	 afeFHd9fO+XrEz/X8/jprcIMgQkZrpA82Jkw3oQney2H2rwI05oEOiKOYSVuysIKsQ
	 16op1Bj+fUtpgY6J5jWHKHnZathT70ovZ/idjQdd3Jj45mbraus9F1Pg2stLiItdye
	 p/Bkdv9RmvRrIzmOAI+4DHNES/763vAuAEV/cBMXQQTGDtgUeuG/8a+AcHjM2rGOuX
	 cBwofZsVM46MtKhqtBnwcANmigNkKkSsgW1oV+lLE6k0tcJu+H9J8bacO10XIY2h1H
	 2vSnXTyF+VkNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E52EC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201653361.13359.3202115386778077681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eecc8fa21820b01413e95642e4c07ebb98a08391486e51247dccdcb54ab6d32
Date: Sat, 15 Mar 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742016533
