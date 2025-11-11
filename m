Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4CB1F2B88
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762905594; cv=none; b=s0J1v/U26zMGR42ep2pbbnXJf0VPzWXPavCIME7i3Z9GuuVZtNzVh7iOXuuVRMe98nm1yPrwnZ/obm91Yuvc+KmIYXg/cKEXdEDQbpXTRYo760Uq4psox3m/8F13u528m3Bc3KrzfIE4sw1LDG3IEI9Mf6TmRnh/4cp0fYhvI9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762905594; c=relaxed/simple;
	bh=1FPa/5lV0BoA3Je4a68QV6NPFYhUtkTy96o+YqXxSiw=;
	h=To:Subject:From:Message-Id:Date; b=J78DIXfeA6qbHkEhA8SFiLI5Lcvfi4TjI9ISAdbKv9BSjWI1nJi6URQC6CzfVn9tPiNZhn9Tt52mm6T6vBeFmNtW79sOtkKAOv1IuvqdB0jKA1vL0BSh4ZAQ8CKlN7Fo8LktG5eYWASAM+aELRuMHFEsW2mN6eTjlQCX4kAgn/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPvWtxue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPvWtxue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A88C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762905593;
	bh=1FPa/5lV0BoA3Je4a68QV6NPFYhUtkTy96o+YqXxSiw=;
	h=To:Subject:From:Date:From;
	b=nPvWtxueMEtRVW+QAwd3QMa7vY01k6+MkJK1iv/l83pQILbgE1YLQv18hUoDm4aJx
	 VIj4tOQCsHLiRN58fDHrhf2TEuKWuy0g66uL2JutU/UVT2/2LJPUggAPX6USeU13E/
	 mY+aZJOZVnWwCjTlCf1jpBeiSQiXozEPJmWPLWit++fVq/3wrbT6kKq6b1w8BYKYQc
	 iLk3nUySgSlZEChezbBY8O5Wg0+ThavEMVmcu5sd1oQZKdxhqNuddLyqctHeuJr9xk
	 wgEv1JHos+vji7i4RdtwbBFkdqroAp/55zu36xyDhat1M8Ma1GScNUdWOdLixOMfpc
	 r+bQ8jdOquZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DACCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290559358.19552.130884932593680422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad4f9501472858cae6505b01e0856eee31d26613e3dc864f6ca8459da748601
Date: Tue, 11 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762905593
