Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222EB27932E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408394; cv=none; b=M7RlXSpvrEUhOulkYynkSRlpiIzcqLOl42iJO9OhtGgM7i76ujNdPzYKxLLR9wfjuvCgjY5ngxX6aCfcGb6X6yEMpH02ufOPk0vdTmTFPAYE+Xj6t8ucn1own7mtNOIH2ozo3CxupEQtFht4Vwrsc8Yf/DDD1ATfIKggPMBUtzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408394; c=relaxed/simple;
	bh=zI7vIJrq3j+2+ywfFCBBjhVg1qFZGyEP/ozcit+M9f8=;
	h=To:Subject:From:Message-Id:Date; b=qIu8bv6lkXPj5pSSNTnW54YUsv12a/P7fxttQ79QC+qoM3HaR13O1rgQpP4urM3rKK7q2tuwevm/WttyT8TannFVO80OCEzNjrd17wjgL0NQsSj7KGoJisha+QAhbIRlKE8xy2KTa64uObDiBB9wZDNrUW4ajEqx2GG2sooOQgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCpAodJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCpAodJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8CFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757408393;
	bh=zI7vIJrq3j+2+ywfFCBBjhVg1qFZGyEP/ozcit+M9f8=;
	h=To:Subject:From:Date:From;
	b=rCpAodJggXIxnJOFwDa9UsmjrRrQu2tg9u5O0lDGECiqFHj1NQNXjRNTrF0PrslR+
	 zHI0M90m1OXzAFJe3JyMTL6tQDflNKy+AwwLBa2zjgZVPWvyUC5d/K+MzvxPI29aue
	 WB2mqF//RSCCqiX3p5HNIG9c79LBi/5Uh93Z6Tk2D0aQtFT2291/6hvK4rqpsPZDSr
	 1YIqpQiXGdUeVvbkWzO21aXZYCNsbd+BF3Ebg0nyn8hruIq+R/BWxbe8XoddZo4RX7
	 R6hOY/j5VJMgeavXqbubarDiBzagADWBHUfTZYwxbsZFSEd0Ql9qYhoQWwuNVDlYoO
	 cMCxF1Sqy2SNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8AFCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740839363.12190.9819503312852764515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882585ce05ca6f2759c5270a44af2cb7935f744ddadf8faab8d1f2173606ffe9
Date: Tue, 09 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757408393
