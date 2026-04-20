Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13556332604
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776722254; cv=none; b=s4YQJNN7DStEwHawHp4A5nhAPhtF8L840Dv3L+fUIqHQ+c6yl4pSh8dgErm2M/zoN36H4eOTn31wKNhdQS9z8MXIhzdK3Hl6P8Ofnrg9liAKQWkZBzrQfYQnTsOpih0VIMYD81ZusvHZAfpzVsx2krJ4cUNbaQ3J0SQpq4TBYaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776722254; c=relaxed/simple;
	bh=EPmu8kGY8Rug5bTdSNJ+aXwTe1JJjdZ0BNkh9MhbWeY=;
	h=To:Subject:From:Message-Id:Date; b=PfiyU8SfE6PzI83/4Onsp9q4GkCu2qoIavJNYUqPlz8W7M0QHp6kyxfsYpA+mFCd4buAywb8js8qFHgQSaqy+ij7Z8mnE8uyyBPBtAfzMNsAzYG4JxwONRHSwzDUTG28pN3wYco/zma9kORDBo/oUPmkQnR7FY2Sezlu6W6uIE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwX1dKyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwX1dKyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FE9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776722253;
	bh=EPmu8kGY8Rug5bTdSNJ+aXwTe1JJjdZ0BNkh9MhbWeY=;
	h=To:Subject:From:Date:From;
	b=FwX1dKynWao9i1Q4RZE+2+drDFlBZS62/LkQ4nb76JQEpx04URlmRFioM/CjnFUxd
	 OHd/WrjkzHO+cYKRcdtiNTszUE7gIulbPFHyuYNn1xtr7vO6OIWIBLHAtvUdNlEF/L
	 8+dl7z2rB349FK2lly+cXW0b+rSi570RKlunDngskZdqQwF5yyAR7QDFkYG9tRmwG2
	 k+oTNJN+GNIbzxap9/eEn2ygDzh1hHWTCrlU5FtI8hwdufKdM50MUyz2uWY2UZHb1u
	 aCwHfNRZBLqfFcnzJU8WUiJ+4rH+HV60XqyhAJ2oUmLVakJmgsVAeTfRubdUAQWE3Q
	 GXkEJBmAxZHKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC90F5A8C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672225369.23047.16578921656795737992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2d2401e3ef8e7338e14c2612546d782853c683faed61656698278d0abc7547
Date: Mon, 20 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776722253
