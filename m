Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD08F7E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79549C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672623687;
	bh=iHx/VzkPHZNnLo6cEpcgiVLTIRGyQEIVpALF7NjZxrs=;
	h=To:Subject:From:Date:From;
	b=p/+rEEszJKPvCkVLrQoskptLEGCFvIWoVRlIIy4dGbrktXx/tC8q3HuYhgn066A+b
	 k62G/qzLzCU2hWYOkQ11/YGY7+J+LZJoDOLMCg57u/U0XMxg5KS0t7kcSZjQ009XNa
	 ccNsfKn2C9RupA2ZnQ4nKp8/sYRyQ5aGQh9xQNLxDTn9zF+/4M125fllVUIUozy+bY
	 52bbfKGUGxngykAOCoBMDLYlCIRdn6gyrBEqLyIYLKF6EKq1hOLV5TyEgZdvB+HbaT
	 9rW4HXpk1wMqIQIuFsM5DKtfdd7SYDfmzsh181fpJqTFnBlHAPX4rRDiIrMXa76iVg
	 58tsJRc+wNmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC0FC4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262368738.30820.10038214035023410466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7819923fd420d0a5917ed6af8607eb16b3eb7a48ba3aa4f6da8669cdee0dd6
Date: Mon, 02 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672623687
