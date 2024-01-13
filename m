Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C89214293
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRXd333/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97923C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705132096;
	bh=C8ymzd5oyMKm3Bb1pJLhmMniPhfXfTSRwlGrcLnbnLI=;
	h=To:Subject:From:Date:From;
	b=CRXd333/FPWOkbNtOvJRYeynQrDzUUnKKMwX7ps9BbKKqDWixJcBLH1LG9mWf48bK
	 PVnzSup4p2VCZPwfWr+VnfGOnMtq3rbwgagweNdy4q7vqWw5cemJBUobHr9UqY7Vac
	 ZCsW68cNVa32YqRBDi5JjrCATLLKoL8eekWBt0fdWJouxMvS8xAo3Yu73NK2F7OycA
	 OEcxRVmAg81qgVQfEUTacT+eWOZPhPvbSWCTOh5BEJR7/Bk5lAn8Zznf8T5ol/06Mz
	 9koR75nF4b32x2/YtbFRwtbgjfHaMeV3y1hwd/Ya5m8Ply2aAk1HktZFms7CepcuBZ
	 glb5u6/josLqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A48AC4707C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170513209646.30338.7707506815911405752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de149a46d522edd5cbb2c0bb8e5d861c033c45f0fff9b888b7694fa1f74a71f8
Date: Sat, 13 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705132096
