Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5DD39FFE
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGG3vWDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78316C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701728296;
	bh=XpzMWYShtCwi/mVhpWeeHW33xdxu9AFRkRRaRLuHAGM=;
	h=To:Subject:From:Date:From;
	b=GGG3vWDqasWUflqxpjVwIKXZXI3gwYTKNDvAGQcJt8xLuDNmTOuoF+RaBRF5/6AJd
	 1iBRVCl5EAKTvJbWVci3tYB67PIg2GHGtIAp5Zi67HJ3FEUmeFlA0dT8ZXdSElM6gH
	 y7E+p83PECCoSYy4NgNh6fmCJ4fd+IrnprlRU+jAUdaOo4fiChJabCMkJDnP7wg/09
	 iy0se8gt71Ub4IiHjfmX+3rvzbAWS1J98cSiqaQhBjOY++MbuCbc6LHZhy3MXimx/+
	 4I17JOKDp9FnKwfLIepqyP7iBXzhGYnxpNsZggy5cfTZhAp0BjIGpO/ZTquHSSegzo
	 49q/X3s5EfJ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E00FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170172829637.32164.576546133607265319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b931daa129442fbeafd5a15366e1fce168ed12608eb8cfc0b1c0a222ba8989
Date: Mon, 04 Dec 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701728296
