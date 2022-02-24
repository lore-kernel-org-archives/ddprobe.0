Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EC07B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645722985;
	h=To:Subject:From:Message-Id:Date;
	bh=tFv0CORdxl8JLvKtlU/ss0kujiJKQyEZhid5CbLUDrU=;
	b=DcxNZkacYCTl598j8qsDbcWL2FVm/ntbCp2gbHWN8ExojpkOKW8xVzrG3Q8ge1I0
	w1FeVx+TrcuOGgJV3UCdO6cO0KiaMpR/YVm8AYC/e7P1h8mKxasZaen6UoqmUyXiqfn
	lBFW9fvr/1UtRHV8yQjhszcjBIfbN/FVV6u4Wre4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645722985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tFv0CORdxl8JLvKtlU/ss0kujiJKQyEZhid5CbLUDrU=;
	b=dAORctXMi0EII6LMbTQINFctC5f7hDMSx6ZPsyC9rHx4E1aDfdfdFychiyKpaSxk
	e5bKS2q9iSBJ/XwunY8xqDasMcnhl/Q5TWhinD/OABCMnEs5T8qTu8YXsO4hHKpNvsJ
	pP2p04wimvzTZ0dmosVL6JSbI7QS9u0UpKVsEulc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cbbe156-5141c7e6-5582-4c09-bd70-70ec9a330744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 308af8963c5888dd01bfbd5e9d1cce49a53c5d4b792ddc25c074f652f7344b85
Date: Thu, 24 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645722984
