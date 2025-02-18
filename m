Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA857E1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739869734; cv=none; b=BrNLImV4aqv9kqpJjV/vw/Q1SOKyGS0RHge6EfG/DLJAFvQYBGhFKrNk47GkZsQ//EN1eFM0eZ+0PcYa2AkiL/sZ3PUC64b0C5CgdntMAcZbpc3w1FccQ5lA0cU2/5EwPh1JAb/jzNxhbR1WZQ1IscV3DbsG/OxGhMT4fItJP2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739869734; c=relaxed/simple;
	bh=nM4wzErzrvZJPlnTppz55i3QXu6G6YWi7KSNmOK1UG8=;
	h=To:Subject:From:Message-Id:Date; b=OKfwx4gESilJ8+ujtoYVgb2ca0aturmXRmF0/GgpV1s/zTx8wjMNqogn+9oYLxpgVRjS3G+2UUqXgucZXbKGoRIssax+QiMDMrTM7jxMSwXLFUzNfWiDcxcEca/RVqyYQn9ac27dZIYclMpcPoMbuKvWGDnrGovipiarlHv/vZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AREgBV4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AREgBV4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BFC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739869733;
	bh=nM4wzErzrvZJPlnTppz55i3QXu6G6YWi7KSNmOK1UG8=;
	h=To:Subject:From:Date:From;
	b=AREgBV4pLqXAyPwBjjqC48dmQ4z2/HBywPByCQZn9srcQ5yOHlBJocc5A0mUzq8Rb
	 ZiA3hAQHLSD9cd8M4SBj+CKKvIWLhvxoIVN/EUaWkGDMc3dfWhnVsH2ux4B0I3WN05
	 /ml67FI999vhM28a6FKbIL6QESQI8sKw9WqOvQ7lp6MEfJ/Pk96iu0SXCgU4WaI3O7
	 RXDfeXdd3MPo+kOsPatWMbj4lZAZX0AKSqARfHdPsiJZbg6zff5m4QAqP0jUsaKBmu
	 3FFGdvIMZlF5IwcNJ2956Y3+Gyyl2aOUeD2JTSVUSAr5DEEqs3ejLPo0tPzIT0301k
	 7awrPZrVzzdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABDC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173986973358.24588.1933473344002874234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b031606ef45b8bf1976da48507345b9136ccd37ae61c82311fc5c4eae7a75196
Date: Tue, 18 Feb 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739869733
