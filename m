Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174B963C1
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttaT/nBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0F9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700990296;
	bh=OWPDDGJ01czLBMqzyI3y8mCTpXVgd/eSeZUhofEOau4=;
	h=To:Subject:From:Date:From;
	b=ttaT/nBIZiV2zgw7y0rv3LE4AUArTFWnkgTh2mKQsSDr+VmA9UYAkk2m96Ft+wFof
	 1Cev05aLgGmEzev/2Y9R/7jvw4kSdSC1/UDAmceji9VOwHNFRYOmua5meDyGCNUvVh
	 Un5OS0Cf8lKkSprfhl2t5/8KJN+nM9Xf/g60CEFv/x2ZLtXuV5okLK2AivrWwyvsBW
	 t3ZNJW13Ac6YPREFZ58glT+RtMiJX9tkrUl84yG66M2Cvbr38FfRRYITC1GUx1Yeju
	 TAT1L9FD9UdjyfVmEHeKwsoR7Vzct2oWVRbGRkaoaLwgVU4nsLYQIonjqb95SmZZ3G
	 6ZJun9Xv+b+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61996C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170099029639.8831.17714308442290638012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9292b99d1d57564d4d6be952981204f813e20122034c3018cb2e0b5f81a7f168
Date: Sun, 26 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700990296
