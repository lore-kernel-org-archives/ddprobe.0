Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082BA374CA
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IthnUjmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851F3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702762096;
	bh=5lhTKf2MvZ8ed2ZF1FYwjOZv/GqC8XbqKRiu9pQU45A=;
	h=To:Subject:From:Date:From;
	b=IthnUjmLAcKCOBB4Z3ZMenC8EQgHikWPgrcjBeeo61bYZ/g5LMig58cBw5RgAQeTD
	 Ehdeht3bWc4TvorpBFv5N9yKnmgo/YU88xXBgSlTqBobGLQpmdhoE80KNPc1w+rCQR
	 qIFbIagl4ClM5wF2ytwvApX6XG52+BfLXCcxvnOwO8bjDKYBOgsVPlVa/Tp4DA2A6o
	 ESnDbWgwuYx31igW7vBlJGiVvAZZaDvBXaslk0doeFtH3YAApjErGDvc4na9F4LSRG
	 Fsewf8VkltYY0JorGiCZaYcT7ih5x43KfsygRBzgaBG1G2Mcxb+0VA7QjO8cd0FE18
	 83cSmMYFBpkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6693EC41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170276209639.9455.17903667529087534364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfee1c92bdda467c0b0e5b41383d38405300a67052a8308f0a68daba7a384643
Date: Sat, 16 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702762096
