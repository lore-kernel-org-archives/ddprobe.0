Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76634B664
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742376594; cv=none; b=cKKV7T8TRPdxHt/gMiNYXLSPSc4VzYyUfnFjUhnJbiBvSTPkC9zqODsHLyczwlC9fH0lY4kw8T5dGWWVjEU7N6oMRAnGhPcM4u+uFm6QOTrFh1fgiD57d6WbD47UpCrwisUIUukhBrHSfIFwyUQ+WA21cSqaOgxfiEvx0CvJnq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742376594; c=relaxed/simple;
	bh=ZzAQmMloxaoieXZinliqE4kh8DxAYSwYIHgsUnX+jrk=;
	h=To:Subject:From:Message-Id:Date; b=S49svcfE2meLebnBqfXw4uKI4ExxH40wV/mHrWbh5U/aHu8ae4rmj81N5XLBFMDu5Ha9IBHPBbR/dEd7GvmaFMFDAKnBdTpA5lOgrjMwwYTyTMOXfMOb5SN3nxe/AwS8v6uKG20uIZW8mSuZKgK3TVDmry1l6sSPiyXUig/iTpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBn+M3yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBn+M3yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B28C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742376594;
	bh=ZzAQmMloxaoieXZinliqE4kh8DxAYSwYIHgsUnX+jrk=;
	h=To:Subject:From:Date:From;
	b=GBn+M3ySD245j/A0ROV8DVi1S40zcEU3TY/tFyP6nMLqcrzA7G2b7YX5cQfvokJme
	 lqSeS7TG5X3NNszdHVbuvsg3FRg89CUCpKJf/cwuxwCs86Ap3CaysMnqCLNlkNcobX
	 tPDHbvi0+gW3YjicIIudOujavCWObBVT7Bpqju/rCfjEvGEAihJ0w+E8ZeSxU+RyJ+
	 05NZ0XEv1FIvgpdIWnmr57dQB94F1RDQecat+WqOaV8/jkPv1crxo0ppWxz2nK9EYV
	 cjtJvY/ddFteB0qcM6XuXDlos6YIMB7Z14k1DxeU4qXjKgNrL1nvOAG/j4QE6/ooWT
	 R0TqlT/H5SQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC139C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237659380.32164.3966937717304280334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d550c4a0f4ef5e8abe4bca579b10f14910d5d20ff1b75762952f7dd75f02ab1
Date: Wed, 19 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742376593
