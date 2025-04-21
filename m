Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1545FDA7
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745207994; cv=none; b=KPnmEFQVMN2aIUEwWVt3GGTTwuA1IHtPDQ0ipZ1eSvFqyHt8xWwcLgzPPx1J9PNDZjS5zj8m6Sq3kJrtBnVDr6ztRHY9anJgcKY+vaasMiU99BHIRjtiECcVnCvXTx/M6q4JWWjcPX4qTv7aeq4a45ooVfWbhYEIi75g1te1xA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745207994; c=relaxed/simple;
	bh=LdZCNBgWKFdb+bd+z5T3rjSUnTnqEvRvlHyo58gfF1I=;
	h=To:Subject:From:Message-Id:Date; b=k91oFd6OHSa3UBIubEDWwagm36cyjqUl/Dr1oGaajjkyOja3zhl1F4kCPaN/Xf37HAJhU5UYsHzNK0HCFUcE8BsEbr8624kxZ1Gg/6jkn/p678H7CuH5MN+Y/c0wx7g7AVz8rborB/aeVAPhEnwhCq376sBShT+kFod5H3bVBYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC0uh3VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC0uh3VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D10C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745207993;
	bh=LdZCNBgWKFdb+bd+z5T3rjSUnTnqEvRvlHyo58gfF1I=;
	h=To:Subject:From:Date:From;
	b=cC0uh3VQVGNjp/7glK675AAlKWOYZ6hZnYN0hXAI5UBk3WiamDXDJSZjnl20ByE1h
	 7978La+4dZIstvjolKjQyzzYM73KbWlOME2bi9gRLuEmolkISSF6BoQ71QxPtdwUCG
	 tl7qVNWRM6GJgFoaxH27Uw7XHMgldfK2DW/z94hLv6Fb1PD98OjYwvtZMe0KgT2gX5
	 0N3big6LTQUUgMt44h7xNtmG1GVaatSbz1Cr1FLvySDaGwMdO20WCBSdfObN15dGHB
	 3rLMKg2u1TaJD+QbZprPN0dChwDV1qc1Mip1b1KEQe1Q/feiUapDtXF8vzFh9uJ1Xa
	 3PBySijKkbDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D5DC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520799362.32376.2765583469534882517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e87a82836813efc7a38e25077be4de6db5b3779c1e49dcb02113e01dfef14a
Date: Mon, 21 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745207993
