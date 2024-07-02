Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BA6383
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719880523; cv=none; b=r/hWCZiZybGEuCi+/XGyHgVbPGhBIZlPMeFuJtK0nN4qy/YYJaCHlwAQdUYMxvrY3/yROoeq4mWYghIUb41hQWqVKaOPi6wjnJ1sm8X+ZT6PDh1+V9zRSMl+wdIU/R6QQ5at476XB7dk3xzLTpe/CePyfl/xuuA/tJwR6DiqkQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719880523; c=relaxed/simple;
	bh=H11SipPoTJZJ9JNFza99hXMj2PGXv53QL5Npd43W2Ik=;
	h=To:Subject:From:Message-Id:Date; b=D2eWJjd2AYJRrayiGafT7ZvlCnENWWGiVlJPenJcLd1q89g7LmO8kDkBEYa3ikme/8Fenz40oXsUKpuRX0AkyD2Qd2/Fu9gB8lpJbsYce4ECAN10PRY3/b5X3sdthtjNqCDnoq/uVXGvnNli37wB+tktzk921KGCM/FnoVAtsVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3jgEIrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3jgEIrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85E8C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719880522;
	bh=H11SipPoTJZJ9JNFza99hXMj2PGXv53QL5Npd43W2Ik=;
	h=To:Subject:From:Date:From;
	b=h3jgEIrJhn50yLL9An2TZxZU2hM1q4DJcjTNn5Cxlby0D4vbd9V7NBtE18yYr3NaH
	 aqGUDsXlHP/+sQIrzCZNTBh1fUNx68M41brayfnPFDGNSRFhIG4LCKX6fKs2fNX7mg
	 RJX6geg/4hOdYYQ2vX27YAxZ+ix74UJ5C3LZ0/5bY4eZh6OXDXsUGDgqzME4VGG5Z1
	 4qMU67YRYHT7v1nD1RYhbYEzNUR1NNOKaYKIhstkX/3AXCajwYWy/Mj3Du8rfPFFfh
	 P6HtOzRh4sViSqyFSiCrXmRS599pXhugo0cD+cRvdUZFm4rbubrXni3UT8SRWi2oHm
	 2SEZEbkQbEr8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B69C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988052280.10623.4078235102813519481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ebc03817267674196c22c263dff727ca55143486ee0e7059c2aa1139fd6684
Date: Tue, 02 Jul 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719880522
