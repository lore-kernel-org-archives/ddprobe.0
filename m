Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151E63B6
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BC8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679935985;
	bh=Lb0ZSIteOJtcBx/fq+btCPSujaBJyQ4e8+6rH3HP9Bw=;
	h=To:Subject:From:Date:From;
	b=LT2Im33WiE4e2NeOqMOKICpmdfegmcJlor/VHOy0rtGOBTrgnP1Ny7Mgy8e70FJdf
	 nI1nu8P4g6vrnDkZZzor5HUapHD7cH2xwwMRfhcUlD6cVclhEipbNTX+WXcOcSomfR
	 re5m4h+k/nZ+n+LQW84MZZOzEDyYJ63bEUz6Ukk2g+gyurw7xdZq4fqca5xHBxVEIf
	 tPe7tjIv41YnaIsrP2W/pbZp6+ujHb2bqCrQrwqh1jp5mnC2ew7KE/6PuYQU5AQrGV
	 Y+Qr3Bz1TPpD9Ns5quKQs6mecP14WqhO/8Hw7u9DSl2zMR7bW4BZrD7kMHAfYh50qX
	 9/g9aVbEy3O9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4FAC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 16:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167993598575.22827.2921657840033392955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cab92a7e222d7777c4cc56cc9d55df5400c16d7204fe7a12ba2ce7cec6cd31
Date: Mon, 27 Mar 2023 16:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679935985
