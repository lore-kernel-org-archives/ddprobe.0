Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D125636E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 810DFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671934287;
	bh=9jpmDiQ0ouT2yewjVla9FqsohtalfPZLwX49Xgf1nFM=;
	h=To:Subject:From:Date:From;
	b=A82FOT/kZO0kD8C/++UtJpfwGSW7i6+9BaDuiVeH/xYaVpB6Vpk4sLv22ShDeUvC3
	 BSUzOMNS3ptd9N6r7TYG1xhPwCT0qGNbvic9vqtGU5H5EDhfRYi/doxEujB9Sg9SFn
	 Nx/ECaphlbJKqc/oSpHV7OYeJygK2RlsPhnHmm33MYjTksQb2aik9EOg8z1MZDY5VZ
	 /JMiRqLw326qidfWDZIYKP2fHgeSCXJ9Q1JhkNwK9zfCLMzni4E6TZQTSRMoI6mimQ
	 SLTPLaOL3RB1CpduAwieeoolU7exRKY+pmgMBwL1ReOKmHzqFSIAKxuACkkYkkuioh
	 5SVKHE35hVQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F9EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193428738.26125.12289826791683391013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9675bbd993cd3f3f52c3672127b403637d47512b17f576361ad01acd15b05ba
Date: Sun, 25 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671934287
