Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBF47C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674476585;
	bh=ldzTXK1PHfptyn8EeoDggadqthwdcpKjT4gzE3DVw9w=;
	h=To:Subject:From:Date:From;
	b=X+rxYK/9qODpzyq2YzG2k2Lf++PB9ZNncHieQTtyP6lCeqChHaMEEo5WtBEo5mu1W
	 8PxkayUlZhKj7oooZTikco9Cx/RgeCY/YLfNaKeNm2HWThZatBnPtbSs9kHtQDgCMl
	 Lms63OT+ucCTPVqPQ1/jOElc6JRrPG4u0+VRfh+CMrB/laZgC7x52eRzBEJGq/fHsh
	 bAFJAWD+3IQRJt9d2i5Bsn/2lLJVPDo9PIIxRl1dmglAgOltjTXPVcRHvQTfUp65bz
	 GSWg62Qk54PX+OUM1+nM0cFTHHUKaTEuAAV7Ci/nSuvian/xIDDiCWsSQPBrumi7IW
	 fLVArmACzZGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B693AC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167447658574.27522.18318293784617384777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71054a8e12f932c756d11dd1d72368d00814b5b935150fc34e02ec90259d5870
Date: Mon, 23 Jan 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674476585
