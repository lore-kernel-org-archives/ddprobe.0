Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB162565
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E84C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667807454;
	bh=HycI0GwruVuSudXDvM/Li9x8JybUKG55qIasFE+ItK0=;
	h=To:Subject:From:Date:From;
	b=MjH2ZMoQmk0QNsKV+2wzoDqd/XhtUohNpu9gbpEulq03QfhLrelcEnFOfRS6+52RG
	 enSk5ZDJBNSeGgUJBOmL8xBIQh9NH7u12l/cn5MwNNbmuZYCGPYVgWQvcOtKW/c5cj
	 m5FRekMr4CMLFD2BpdJo0E/Rc8eVv7VCqJRygxCoSlRhAyzOD5EZ3aRRaL+rJ1bJnr
	 S5dIgKhJ9CWPieVm9vwpMBQ8PIo4iwigIKHp7eb7vrfrkOQJJx826zuj/ojIpJkxrE
	 dUCFixoXs+Uc9SzYLU3PZf7ejbl1ke38vknHYp4/UpuzWWC8osCKR876b2if5yHMu2
	 xS+b1weD57+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A5BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780745434.24548.6797505044853041897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30da3753b0459716c2f8f4bde2c7adb92e6c2440aa9416c923128d2ccfcf573
Date: Mon, 07 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667807454
