Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E551910F5
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvZyKXid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839F3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698479296;
	bh=BksrC47MCvJ/0on2zFzv2/0EY5/unccCv3jkEtKDETY=;
	h=To:Subject:From:Date:From;
	b=CvZyKXidDDgm76tueQGmd5jSAVtBK4i01zX5S3fnHG2LJMaevdb7JxtA8853D5+uY
	 WH7KNfukSQclp1Rm5D+NIL0D1T5+tCSQjH4UyD5RwBRLXimtIOe/g1kdALUFe2Fztq
	 VDKpWqoMmTYbdKCYOVnoTPqgb/XT/Mp/AKW6k6610DLYRwuJJrYq6ON0w+Q9QEkl/s
	 F9jQKnjZbdI3/Y7u/I6ZdoPfNNQR710kf4pBNA6k3teDLGtUzCQPXtGqL3vMZVMIFN
	 bPZ9XtqauJTmitK1SbSdWEYGDZHl6Y9XFkXpG3bLTPxAm4GUILAZ46izSpuur6wY4l
	 Gw8k4xLsVvNiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D07C0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169847929639.21706.16786321561027122736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5826a4aff690288462c87a3e4648ce902ad1cac79a15620c124e6cfd41170620
Date: Sat, 28 Oct 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698479296
