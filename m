Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F7E20766E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746225595; cv=none; b=XxjETf9r+Qub6mSadYaTZ4D+8ViWWJ1GNIaHI9QVI0mmUQrfyygnD+D9mdMv79YkQW97JuXK0DdRouUDZl6whaJtXRgBH3z0Rl1FSuTrsClep/XSZDmM2cfbzIKgAsM34YNQ/Ls82aEnYSeGlP6vpD2AIw9mUDDnNM/JsXd4/5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746225595; c=relaxed/simple;
	bh=LsesrfsXR47rvC4Ep/hGkDz++7tFIwelns8ZaEsunIo=;
	h=To:Subject:From:Message-Id:Date; b=iDMta6Z0QzIeRFQOY3LArU6lOxt9DQ1W2PtuiByLaB8CjYu8exBYZXP3sbPq7hFIPGl7wO+cgDg7B7JVv0DXaiezlHLsiAaFui5x4BPhAFkpJuq1x1bINVvl5QaOBDiP405ERsw+vgBKKrD3hZo7xCFlPl+U5xKMeN7NkRY6Tao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVwjrat2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVwjrat2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCF6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746225594;
	bh=LsesrfsXR47rvC4Ep/hGkDz++7tFIwelns8ZaEsunIo=;
	h=To:Subject:From:Date:From;
	b=UVwjrat2MwOd1ZUQqG6AH6Wbd9XBddP2GjDOayu+K8ozTU7IGppGdiRpdQ9ppyXdY
	 L/0Syg0FkHNmwfTHNyA2yHGLx9kT+JJySsjwZAVhC2k7jQn2wRAq9usMOA0qKGH7wV
	 ABLPVqQ/g/yYZ4A4yKK6vP4loH2G+q6cE4/l/x57mnkSRkxCFyZyA9K+a0NLXEQpzC
	 b1S3C9jeVqhX8dtiepRhqdnphNFhWjR9ZAILUhGINNr5P1+06zg01tRagouMjB1rfB
	 br+jh59iiwDq7E7FamxDuYZA6s8/R/3HJa21SyWjrrKiNwfs6gc8sTaqcOFfgfG8W7
	 lhVkWHfTm5JZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E014C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622559357.7912.11253803797280580858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef592b2af51729ba798ce54b0d33defb09bfa51933a97a00a7c323c93a8765b
Date: Fri, 02 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746225593
