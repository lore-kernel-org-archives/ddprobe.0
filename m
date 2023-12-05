Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023B53B798
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4iFuoKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739E6C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701779296;
	bh=zvaz8Lk47VckwL0h3HuvgPv2GFVrkouAgraIdKag5Tk=;
	h=To:Subject:From:Date:From;
	b=a4iFuoKxmLp7rXBC9NfkAS+hqLFIK1RtCnc/yI3HG4i4PLtX6uMIcTsguNRZkmJT2
	 luTWl+ZfE55XZX2+fNItwklMwo5p4UoqKYmIcSChDgwuhTdfz26ed66/xyu9m0Ujjc
	 63Tp6jQEsm95zXGzUdQaqFOHrEHmujXHO3MJpYs7C0Dw1s8DeImgvsHSSCdS9C4Pf0
	 JgJsYhgPzC5eelW+8kjygC45qdLDBPDMIW0vrx/z432uBx3nuDoTjkhykiVHmEKvAR
	 EWhk4lqGej6GoGa6nwfkBtRUDPEoYHpxJyhWuoQC6D/KDYMRyhu8dBZxl2KC5MuNoR
	 XS8weZe7ACTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7F8C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170177929637.19213.53663034819984114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea09cf0a5fa90976341331bc6743153ddbb8fe534d6abe6311f1237ed1681be
Date: Tue, 05 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701779296
