Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6E33C00
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733E1C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662331253;
	bh=/znjKzLxf/bXexpJuavWep23icRBxm8oXRfyHUQKOME=;
	h=To:Subject:From:Date:From;
	b=MjTCIg4BR6or/LLxbePnobzAC/gnQetVyUUvbmFBjuHgfyV6N+2YuPph+tDVMbfBF
	 s3F9j5smml//9C/5XGBQOGf3rde68HaUgmvXEA9JKmTf566Dhj8LaIL7bFBCqrfnXW
	 pT0vpg4Vju7VE7qK7vYgdla+tSHpVDDeDw4eXH28N2q7EnMR9BcHPh2sb11sMAKbT1
	 s5Rm79dG1Cp1Sw5WEB6sU8KQkt3he+wES2Oulg24k+TeHLaerMr1xFOcpVdwS1cxD1
	 5CC1BDHoDHDfu6mBa4YmjbQKz+51sb+uxM3e7bJV0bum8wTTmalF20UFa30/F59grh
	 PIJYbiz2idFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52428ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166233125331.22565.17567146108016306830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2526fc671b6aed48f4c3dadd39d35308d40131e0dfacfc68ac9ec42bdb29278
Date: Sun, 04 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662331253
