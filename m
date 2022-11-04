Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C045C1856
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C57C4314D
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667565654;
	bh=/xJzqeaHigWBUj9eAWiCePlgcQC4WD6vHBC+edYnxPk=;
	h=To:Subject:From:Date:From;
	b=tN1xjsVUVMpA7Yv9DfkELBL7bZlkf0rnsYi8npVvUUPOemEgVDD3/QisZH5TI2DEX
	 0oAwZubjLU9fArZKhn8b3J/3myl0j+ydaYJqjpaG/puXtwrFLEwClUUtXSDQMyobCM
	 mq654+s6ZlPglG9OKjT+s3pVWPeKgwnUYmvtqBUnXf7eQK1y4RJ1tP5297ID+vo4aM
	 zD9A7wg4DQqA90ecqeXnW7KeLbyf8wGfxjpjCeqqJqs0LfOX15D7IhB6pby6KNL2T4
	 ePyn6+gqcEcT81oE/08Uz0UvsOes9lOG293TOoeN38PXr0bL9ls+t++nPu2bRs1XmH
	 Pn84LvXaclkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFDAC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756565438.17427.13684491455587590609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24151f1db4d91f1024a24cdf8aaf4aaaab9444042e067f2befca59a146a2caec
Date: Fri, 04 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667565654
