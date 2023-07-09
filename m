Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526741FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AA9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688893628;
	bh=GHmD34PwC3oOEwzxTMtUUQiP/AVPVU9M2Wfi0uYK6dg=;
	h=To:Subject:From:Date:From;
	b=gdYrlj0CiihgEyfCea5wpzsBOfRih2FcFFKQABiwuXd2i1ZojUcIxuMUTYXwHRZQw
	 GAN5ZpxRa3PsTMxsbKufz4CUgjguRo9O9X+2VH+Lbqhp2bOTirXKHzkOM8iNaNgzKQ
	 j0mA9/pN2aCae3+rQsmmKlAzw/dEUdffGlk3eNK4IPn501wmrn9AaXFswrnfbPIbQR
	 RaEFx7L0GHRIsz+g2HtranBYSU+KNIXHzYh0d1XTKc7YPC4zdZiwiNX4t6GKmseHVI
	 U9GxhuSHlrtc8bAnELjTrjNIdxzP5WfHZMs19LFJNrsILzlOosukmWRNgt/IE93kgl
	 EqCji2oLyZNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF858EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 09:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889362868.10933.4944155683093527317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60edd76e95a6058139f6b57b963ea8276cdd5e35aba5afc13029eb5107ff2668
Date: Sun, 09 Jul 2023 09:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688893628
