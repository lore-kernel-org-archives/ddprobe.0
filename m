Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7F17C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BACBC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664736053;
	bh=OQjN2cYZF/DF9p7FtiDjYl5L1WW5xY6PhrtX1os3634=;
	h=To:Subject:From:Date:From;
	b=t895YWhP1EdDVPOOU/c6s6c0MeFOTcx+StbOet9Jq+VGneMTQii4+1D/zjf5F/wg+
	 Ybt5EmrGpjTpXP4xo22GDRt8sax63frmXyQ15GfQVHg32dGDQTzid7x2FGaTuxWU4r
	 ZqC34diyamzdXOZ0JJRLoyyFDXUJIXd8O1SmeN3kkfZYakoRrTbyVjyv5gGSk2EbO/
	 59gd2spqQAG1TRKncc/FXYicpKadvH9rHOSbcdZWPJp4mCHLsHzBqJsv4gmK+KoBMr
	 7VvHK280adoduwWc7ilfXcf1kQ8tjWWm0/SDd0Ny17F0G5eygQ6gfmF/9IlOZuUtVA
	 gFsFEfTBW+qXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5108CC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473605332.5187.13995384754020194729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5558e0a9a079dab97a9d4919926aade6e92ff37a200df243e8694be297f000b
Date: Sun, 02 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664736053
