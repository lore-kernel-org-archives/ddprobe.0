Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053F7136F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 967F7C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673167287;
	bh=7YN/HVX9ISmaCVmScgZxrbj365/JeDowEyLYZahRkm8=;
	h=To:Subject:From:Date:From;
	b=st4MgYCWxcPqCt7NdAvn4108zeTkge/ahwoPKnQWO9CMiv+ww1XLEMh7eycFiounZ
	 nm69WR957jQHs50n2VlW3mR+oSvgoek8ssv2XJT+s7G4IQBW3upSlKMjk/HiwwP27G
	 a+1+2Q4F99OV4hSLFeKOi7AIXvCcnIFWqEQUpXUOnPRyRzPjVliCL/WUfCx+DbwMn6
	 wDgjATPhVCng96HoFyzjyESyWArNP0bbiPfoStSpOwhOu8b0ztcumJ4dYnIijMVZEb
	 /8Jb9q3fu2XFmmH8vG1v5a9DOZrjNkddI/NcCzs7zl1KxBv8wJH6+n/D4PmyHpkb8Y
	 aiIxWsYn0JDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 741C5C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167316728745.25986.9882511176183543298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a59f5d475ed63d52a1c2bb831bbac150e3ea6dd514cbd83e1c4ef6989d35a5f
Date: Sun, 08 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673167287
