Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B4E7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C40FC433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661688052;
	bh=3rAc2W3koCZSt8PxY5yguxf7FLo9OtF9RN3d6MSrNKo=;
	h=To:Subject:From:Date:From;
	b=QuyFWz6JYh5lUJpPP3+DEDlKuRFXSQcQZV1lOSjTMlp0idOV9gBDjDWUA93MmYoqK
	 5JcxkCGNq2nXjRV4sgVQFEJG9HuKXW2/zfpTuOuBws/dbb0V29ZIkqCvFEuM1XnizM
	 3ck3OkVJHGnUm4iW8aWll4LfQxU7F0W38iArbaK8JlO4/C8RWhuzYcW887OogRO7CK
	 uCwENHBK2QxaG7aEQJj5Do/9RGpke+trWWMvSfgRjtz5javBEeaGG4WrIqaYqVp3eT
	 aAiGOzmESCIygmEazA6DQ10FKJ7dTHE/+jA9vTxDNabvgFXcqUsUBBLrHDT5q7ddzW
	 NvPuEo6Xe0cWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50143ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168805232.16642.9036592952480383956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec42d83a061ce47fd57f7c12bb3bbc80192c3aa14a75b47297cae8ebed94a40
Date: Sun, 28 Aug 2022 12:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661688052
