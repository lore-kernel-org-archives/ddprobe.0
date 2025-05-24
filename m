Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A301C27
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748075994; cv=none; b=SjeUm/wFUuYl11OuWA1wnqHOQDEHOZfzdm1DpjeU+L5V/13GfTqOjY0TIT1OoaqZq7EHx7MLwI8nHTjnNLMDB/526l5ZKnzNiSprUL3X+vWV7I4WIXu7FUtX84jWn9RTQGFrAoYIOHHs8N+TM/WghO7MRPsGSXEr/Xzqoo77/LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748075994; c=relaxed/simple;
	bh=+wrlqvOSDoNEbLJLp0xJflAvHN0g+Y5x94EU6FtjNQ8=;
	h=To:Subject:From:Message-Id:Date; b=I+Cl4Fol1IiMajVNiz4s/Yq5eu6cCp/YcRgC9Z2Yv65RLR5MGKCBI4KzNJeBJjkbZ32atmbeueDCtAhkURXu04L+IN7IpElW88SvJlKVxQyW5e36lSq17tb5K3AL+B3Dz1wxSiE/nVUQAUw3tOJx/58+GaudTR183Pf/xPMxu+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D73JipRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D73JipRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8430C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748075993;
	bh=+wrlqvOSDoNEbLJLp0xJflAvHN0g+Y5x94EU6FtjNQ8=;
	h=To:Subject:From:Date:From;
	b=D73JipRRWdH7iFVCJ3JKf+KFuWgZCBgN3D7VFdcI6HQhY60FzMzigvAF5znm2nmQE
	 kLnjp5gFqlKzD72yASr4cwY0+QuQl7hN8ErvF/EcFDh87mt89M3HYWAPgOEC28Efsh
	 8lWEEIv+yQz/RCSeP8I7yPQSOTOE3i+B/j892xRjU84a+srcd5AGsvtp7vFS1diNIw
	 dUjnYbfkhlwoTl+7pX9n4Ms//9rHLLGIMTeV6x3C8x8hxJgw3TpxExCpgadEj5fwDO
	 1V1ffag5yDQhRWeTv4azNyROutVEbXSRe2TbBAhmGRrK/HgdssihTuG4VZHtPcyB0D
	 7K7oSPLNQLrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A66C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807599358.5875.13330946091369732888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cbf6e7b3fa6c2360e9e1f51db68e7b1ea481aaa3447b92c553b7dac921c224
Date: Sat, 24 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748075993
