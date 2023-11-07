Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191D738D
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lhutBgIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84068C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699321096;
	bh=mGbV2+bRz0lXIhKw087uLVJx/x79njDiXyhlJOqNdWA=;
	h=To:Subject:From:Date:From;
	b=lhutBgIXVSuoL2Q56eQ/9biRjdALlx2qh4wQAPub06kvzFVfwuzhSvl50YzrxPXRD
	 RbXYqPtbitxL+wRu2//Ib1FrLwJv+PH85CjWSkpgu2gHVIEycq6TQzZIVTJ+m/AGuH
	 iQ1ZDU3+M5ICy5Sc7E/+8PNi8K9TyHRnm9gWAgMh6laV3YGT263iLYPZsT8SGF8JfY
	 e+o8MVR3QesETr7L2BHxn7/6edUJ6KFZvRZ2kQcXIAygd0wnw5p95ACeBv8oe3xo4L
	 GUf4/Ibl3cyKfuCp3Taoq7cYCNsayCawuIrcIVEHTbnh8fOhkNSW0WaUa9uMt62Lzm
	 mowon9N71ISXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63541C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169932109638.26544.6978481975906942914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e5f7dbf53bbe03a577ba398a7fea152f5b1f3fd77e736d0e65a7bb9b0f182b
Date: Tue, 07 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699321096
