Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5692221B181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737714354; cv=none; b=Qjf/2x43ek4bsE4Bpr8DdQ7iNziVX/whe4iIm9/j6mS9dQoNC/l5nDxEbuut0HTl+bFDs9Q5+2ZoU6grn37KvYJx8/m7UutA7OMb/YDHcbBsseopw8B7wVGpldbB3yCaWi85Y4VsSmcVN33oHl9BiriRRFB6B+mWGhhKpUEUfHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737714354; c=relaxed/simple;
	bh=/Wv3Z6lfXKLISyx48ZG5ZO+GzisbjdqUOK9sdPpOJYA=;
	h=To:Subject:From:Message-Id:Date; b=E+0lRWwDC0TVXIaFsq5UkeZil9XWN10FKo+2xQfuEhn4kPF58CewVfc4NErb+b+GoXKM2+tCK30N3+8C11rI8PpqIWfydCVQBtU7ek/JqXlKhYiuTPoQSZrfGJk1zz6BG8IfEftPHYBoVf2djtKtBw/AxtP9kksoe8nH5R0O+TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRQOVOKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRQOVOKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA3AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737714353;
	bh=/Wv3Z6lfXKLISyx48ZG5ZO+GzisbjdqUOK9sdPpOJYA=;
	h=To:Subject:From:Date:From;
	b=CRQOVOKtGZDRlxyC6gR6Slc8Kao2jzvFRuzIKtjKSKUr6ePjJqvxIw+Zi17cTRDLI
	 RoK0v34+QWToZwoB2xUm4tB+QbS019uHsqnLnbpFsD+mrX105ZElGRvYpHTDC4b9VZ
	 XzGeP7yyOIpJxm9IbsrbVhMHZCGu3xcHeyBrTIzAvccBo/z+Se4qE7ixj29/CzRDYD
	 Yug3hJ9KYzahgze0YktjbDQGv5UAmgaxSZtifqp6nkUsupssuNsh4afcwe6gVgHwnm
	 yiM31pB01z6Sy94MC44Ih5OMgicHVabz8A9lSa+CQ8cJ1Xc+HQj92ejlTCpTYushBk
	 E7cTnffISnAAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F1DC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771435370.11507.15405895314764428181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0b4318e18a0c3d2807d0fcce21fee338b9eb2da3629c84ba84957065fc6192
Date: Fri, 24 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737714353
