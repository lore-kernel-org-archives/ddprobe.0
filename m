Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6B71381
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D05C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676967545;
	bh=l3A1rFTGNGLVZiHmAH+gFbVD+2C8IABhhe1aL22SBWM=;
	h=To:Subject:From:Date:From;
	b=IOj43XZF3F5p9QRYPOKUTc+nKc008pX4eIVbk6OVCNbvd36UajbzVQBVnj6zvuGEC
	 vbl0gL+kh2QKtI050qX5DDdZcViEFUd3PZsoyHWpkWQmhXjgpuhvZAHQS/UH04Rmb5
	 imcMDMxU1gTuv0A0NqVPV9o8M2o2paUcoRie15NaXcXd1lPlqkvho5zruOmxq2hwRF
	 ELGa2LHw+61et57NYakL/6SR1lvPDHuOmHF12uzGXbkG3rLe1hJ/QZfnDGy0r+yoKk
	 W1NE/apIhUVqvbZ9t7X6Ig0hEPfwfnhqNoBDFTh47ufIwyfLQtorbDyW97xVTyEV3Z
	 j9GWILvkNNCQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4485C6379F
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696754578.18420.3405512970361707172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec76e385896c5b29b05e5fd90df02a26bbbc990f0448ebf9dca5e3ed3406080
Date: Tue, 21 Feb 2023 08:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676967545
