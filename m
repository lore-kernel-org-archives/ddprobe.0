Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983D8F4F
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvMAJnF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B82C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703946496;
	bh=FFvUxl5wi/Dr92VPpQZxRLlcBF0fdeNwAHyHQozwWO8=;
	h=To:Subject:From:Date:From;
	b=CvMAJnF4I0IaTmJt8B8KSPqOMrvWekFAsxq9vkcoxZQtLH3zp4thPpCB2UOkCRarP
	 A/GIMTs3sH7zEm3G55zt8wlc+GcZaZh3Frd+pxIZWPewke4UvWamUp6ymUJvQJET4f
	 2fXaqDARxVkvd5i53jD9GyvomVzLSqMClV42XZ4TDDM4RRQTPj6Iv7kEwMs0phmEG/
	 6Y9ySx1Sl8Gcevfiz+pKFJIE8X6BzgaS3UBixvNargSyxl2XG2HgIiqJGoCMiTxsrQ
	 ewcLEubeMSxdKYKfwXtkVFp89yb6qhdy9Jea45ookZa/YF+b/erf5/l8RAa41NSz9R
	 +EkQGT7GYIwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6771AC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170394649637.18274.12253720010734527666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158d9d873a7f1eae9f5484bff8648c5cd5d8a24240ec577c7051d2311858a4bf
Date: Sat, 30 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703946496
