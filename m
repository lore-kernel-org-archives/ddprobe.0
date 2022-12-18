Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1A52CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 946CDC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671388287;
	bh=XGGSUOPINkmC8nQ66ktObrZwrF4gPacZvKTvoB75bfg=;
	h=To:Subject:From:Date:From;
	b=bS8Tpdo1LeEYtjyowo0fmJgHDcppUX0ipTfLTQ9jBg+A99Zgw4tOHHvZKY5NwhnQ1
	 6SbghVS4s0g0TvFQVuuObryzOdUwvNtn5++l3IIosMiPHXqksj5BVIALiCP2Ax+LsB
	 rw6K4f+W5qFjsvCaRmbd4i8yn4W4afBmCHXxAyYqOTC/eB6MOTEX36adPTOAl0QhQY
	 yfzrWSZ8lHMeJ52xYTp/yoKaM59Fppx/8lnhEoApZ7gLEwwQ/vncI0JnIrmC3E24Zr
	 lGWBZ8pyJdEYd7uwQMJqPMUFSibEcUAMPouFMTWBFT07dpRjnhsT5ScwPr4zWZrQJL
	 N7gJRDDb0XYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A003C10F1E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138828748.11008.2190767384237069465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d47b0a4e02f8dc18858120906df59baf0c828c92653ceb984693ff88b6887f
Date: Sun, 18 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671388287
