Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7566E10977
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3477C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688767028;
	bh=fMu8jIfJAa7Le0UjJEQ1i15whGSMVG34Po4scCw0unI=;
	h=To:Subject:From:Date:From;
	b=fWqhUfFeSHJtolMjNCVMSVvojOOmfoUCAPqgy6roI/Qj0li8KmO1UjO1F7RRCg3ph
	 jjr1w8x7sHshVql+O/C7VGwv32k/TIiOMWDyzMyrhrLqlGLeOtc7p/OJ5Zo0hgXfyV
	 bE2+u9DydcnHIgNcY/mnQeKOlZX8vTnkJDoxfqHrNdDK2qAXlQInrg3C0M1cMAHtXB
	 /wgRfeQbQF98jdxHX7QfPRx6swhdnaMf079dLT5ZaIBXVZOuL/iN64mKakqOC8cybW
	 nEjeSRxH8XxK6gjWEhePFnn+JFgn+qwRKWpP5B8L3/YN4SZNNXxJlUeyx37GYKzf4Y
	 kQtiuuac+iPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FF3EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876702866.2260.14236990597074190439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24db2607881ecf07b10137d0fbaca489346e3bd9df2062229c8063b9f53810cc
Date: Fri, 07 Jul 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688767028
