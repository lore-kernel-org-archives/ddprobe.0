Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BB1373
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738033554; cv=none; b=Y3WDEPZ8n/Nj4Y62N8/w345BczxVFPXHXTBQQjDLhBkb57erKoMz4G5gt8xJOsgoQQLnK3Qz4/tbeyZAsd+Bw3OV/89UfMRUc/9+YnD5LKxuHsRX4qnjgOXy6lpGeIO9FBLSH0+hVSIQtZLAhNVx9gC2um4ZDbnq1BWaGA04KGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738033554; c=relaxed/simple;
	bh=y5EXX2onhb3moUwLB967rPnK5XTVgGRY0+iBx8Zk9f8=;
	h=To:Subject:From:Message-Id:Date; b=SRavAMOy9YzFOAI5lxZlt/6cAoOGnCX0d4D6p3uPpyYgzAcA5bQUi43TyfoaYUVHEoO8OqD0e3HFVoDha+mIdM3MhyEncG6/aJEnAxAR9CdVgwrIGbSrOnMlgEdSwZBWnT0UoeW42obsNGytwV223NugSGhu7c3bJYhC0LfucSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0cD5wZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0cD5wZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B806DC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738033553;
	bh=y5EXX2onhb3moUwLB967rPnK5XTVgGRY0+iBx8Zk9f8=;
	h=To:Subject:From:Date:From;
	b=o0cD5wZro1K+xOEYfDpo/TCB1F8g/8MhycolPdXsEHTjyS+Tb0k+UkPnS90dsGKHZ
	 VCgEasyzzzc5hG7Ww24Yhu1bTUcQoGrkNap91BL5bbItZbWrNte7TsPot08NgMEc3k
	 KO2dA6bBgOBu7WCRAkzHue5T4rhl8Dss+Wqyfw8r2mOON+Xt365qzwm3/+6d/Kosem
	 VOlFVpnctdFg/elVETJizoAGLYdaH7pPaFRDfsbFMVaQYXKggl/maMpUeFX/Ev9cq/
	 Xd6mnOdC/Sqk9hY31S44ceA42pxd+gITZyuMkqiDpE93g/6kldPJ4fww4J1xyK9H+q
	 0wdySWS97NIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DF7C0218F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803355366.14126.5474127711244544055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c9be9cb3baa55734dd7931e6bdd9317be0649218d186b3d01b58165cc9b23c
Date: Tue, 28 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738033553
