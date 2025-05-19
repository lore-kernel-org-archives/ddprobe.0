Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463921FF1C7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747634394; cv=none; b=ivGtzCjiwbBqnTCcDUk9fMA8iEq2T/58VgZN5f0OWwreQXEzmX0pC7exsH+8GczwiZPDs+YyS08Rq6hqimFCSoN6hDpFBenaMEdQWuMOg68p6R9wbuyroifl3pdBquO2OqPyUQaGPuHBFwrnaOGg/JpMogooT+ZIoGlblvkN1C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747634394; c=relaxed/simple;
	bh=8A8Q+SNera4EPvHQQtgl7dItzCX5sJIarOVOvmnNPJs=;
	h=To:Subject:From:Message-Id:Date; b=tlBm2hiLIZdgEsAvYCxDhrAdLqIJBwVk6VnrKt2/n8VSuoSkMvuMRMBei7i2iRnmFZOa8PqzXRFbHW5kuStkhddoq3kN7kYxlIwV3EZ0UTcZU4RQq9BFDSQmrM6WTtOWvc8uPWMvZb3mFHWwf8zHNd+bH5siu6Sn8i7qgxqR2fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jdee7qw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jdee7qw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0089C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747634393;
	bh=8A8Q+SNera4EPvHQQtgl7dItzCX5sJIarOVOvmnNPJs=;
	h=To:Subject:From:Date:From;
	b=Jdee7qw34JsHLSvhSaDidKXRa4qhSFP3k5UfiwPi7+2GLNmeNw9/YEAlhKER0yw1t
	 Drv63yQiG0mibW+b2jczG5R1HLXSBygLbwjMVdUHrWJlh8esL8M+Hb5ynXT2cceHZt
	 2HEmmFgy116bH308cB+DFx0XJr3PbkqZt9NBd+FRTHnIxK+22dMnbiqXPtQ+/sLVRq
	 CIEJjEyiQ5LhEuN1lkRFIEEHYNhnZDN4kmEY6vhNrDEFQei8C8104nvAA526HPje4Z
	 IAxSUHGoXsDhiDGkhXPXsnhvuitCuP9xpaMpo9POtCpDamFa0g/QNvWDEs5fw1U8J3
	 OkUOhxMSMZ0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE20C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763439357.19836.11686612543825076606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6cadc5953d984aa196d2a1394b8c4651fde242b219760e5c56e5c0a3ea256e
Date: Mon, 19 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747634393
