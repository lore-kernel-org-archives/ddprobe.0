Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280FE21B9FD
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755466794; cv=none; b=PXPB+YhbHCSBWd3TBrhNjygqV4jpXEwiXrFRh57Dv+a2TlqgB1DDl9O62N5o3o1ZhHtoLagHRkMnY2Q05NTkl6yfK4KCCpN6MeO97xc0II3TIwMM1ppVo1CutCxkQ0IfK3/cX1UmyUmOt3lOsg1D01txvvBo8eoBsCt7GOvB6+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755466794; c=relaxed/simple;
	bh=dEivNZT/8K2cWkE8x4oN4lztOA8VTf7yMRv74t7KrGw=;
	h=To:Subject:From:Message-Id:Date; b=PTBjolB1MZCSf2WvaPom7GX5BuqTa9OsnMFwiBBz8iVB+XEqFbKv/Q+vUMA66j4ALypj0mGK193C9bmge5Y+0JQx4wfEMpVvRbUvnI7sDMzlZUCZtjOjOwNxkngpE5sc+z0HSnpR3ZWIccAZ4isTjEdJflcZx5tTEVO6vgCib5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTYeDrXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTYeDrXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2926C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755466793;
	bh=dEivNZT/8K2cWkE8x4oN4lztOA8VTf7yMRv74t7KrGw=;
	h=To:Subject:From:Date:From;
	b=qTYeDrXiO/pl3yTp2B4z8fAoNC79cIjMPy+4C2kKFprnTdNfF4Pa3lhZgdDzXsmWu
	 A4SQy2wJ0I14F5LdBu7lfCd1Lgyfb4jIILSXiOG3mPjbDwVmGfN/AFA9SSSP7dXN0O
	 r9lJlQI11pOzgmWkKdInOn+y7RrN77cAU4F6RtGh2vzFCAsZitH0OFQfHf5BT6GRwS
	 20AZ0FP1iHocCIQVKFfpwufgcWwO3nJcoUTSVKAHKUxRD1p1vS53HrFS29Q3JTzlj+
	 yElR+vhxUHG2DoL1Hxo3dwboeiSaQScpHvzqScnm/aQ8xMbh/w5S2wDoDoS9QAgPRe
	 uNE15q1bcJO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E8CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546679357.18726.6523367920323476870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff396bb661449fbcfe91bb79346b479ceff151038c0c906b0ce95ad91a1d9c4
Date: Sun, 17 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755466793
