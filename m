Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DFB33A718
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774608893; cv=none; b=LfVF8Qzc9px5GS5ae2llKQrceYul//yJv0+kr/av1PfG5iUXpr+e667Ev+DcLIkztSFYnaGFlw9RwxML7z+dZ5AgS9/+0u3mPXpvOxgpGER08mH3+YwE+MitQVAAAXps4Pr/30o2zf/FMoIagpFPchktUPn0GmKScc55PpPStP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774608893; c=relaxed/simple;
	bh=wQoit11AwPrLSkIUjuHW20QJCJ7tvixNYUqQmO2QP40=;
	h=To:Subject:From:Message-Id:Date; b=I7j9Pr5xw92n4vUDTm6lhG3TLFy2OlD8W8SMN7M7Zp2Xbo/V2qaSlj9IDXPPp+C72Ng0rhkQw6/yNdOtKKlYefuuOPfUEryG33XILF4MOW5T8CzVIfoCvCNqYiszsDtHyyiLHoufNB8v0BZwLYhKdBZ4SQ+jGN9neLE/bnA5Dug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C28F/oLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C28F/oLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF6C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774608893;
	bh=wQoit11AwPrLSkIUjuHW20QJCJ7tvixNYUqQmO2QP40=;
	h=To:Subject:From:Date:From;
	b=C28F/oLqGWrGklb1t9WLJwhdT+5cdnmENIqvNx1m/iu87uTkI2g7+6668iCWz4HsQ
	 8mA+ZujAmHyV5uPnemNfsDCzF6p8jLz942Y5i7785PVDBCvZ/T1PCetZDnz54b3ED+
	 MJ7GhW4p3tQDJVLL/q4Lv9g1S4zYyDdl6XRNaKHlALFp4vFiFpBJMzLJK04atNkAKj
	 dbmqHfcsOmMjSVkBO2MUGAPjoBTIAXgccRGLzefnRUae9/qlGsSA9VBuKwn7EsBBJh
	 hh2kZagcTTzMsH1lT3Uk/OZfO/xptrAKDCwXK8Vr1kxGPlS0hvm4R58E3DokWkauy7
	 OH9COJc87lWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5A10ED659
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460889358.23381.13945999459438604475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4573ddc6f143c684144e636e5b16e9f90c544c9d20496ecafc2dd1210dd700ea
Date: Fri, 27 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774608893
