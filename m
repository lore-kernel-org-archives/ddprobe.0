Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345472F32
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749872995; cv=none; b=Dud2YCdQgDPC8GwxtyA8IwZfig1Iv+TskZ28E4nIS14//aBKe8+PrGVo78/+DSQCMUac2jgI+mXhJlsonlXZ2ClYPDDGGHL8/Fu3QxoQLS513iHhM/gwzXU81kSqV/p828SXUB2Crm18stOJNqmFViILp4YKHad+Px+e5kn2sNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749872995; c=relaxed/simple;
	bh=Yho5lDr+AyBCtfVHs3hVYd1iX2ZQxXxdX/HG/7kBD5Q=;
	h=To:Subject:From:Message-Id:Date; b=YfnqPmRcHu0Gj0yGrrc030rw3psVkhvIx9hL9Xk4S9RkYiAIqiOCk75DLBv537mmGXrF1u9mYl4M/0psW207CdC2yUNYmGDjWTbSmbnow0zXcl+CWfDh2qwn0zgsVh+SUgPeFlwQ427Pn54l2SNmYbiUv79LwSHdlsjt2hrpy1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZcMR8JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZcMR8JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7556C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749872993;
	bh=Yho5lDr+AyBCtfVHs3hVYd1iX2ZQxXxdX/HG/7kBD5Q=;
	h=To:Subject:From:Date:From;
	b=aZcMR8JEF0RrB9JwyM5QZyC3llWjAelqNyYltSp4KrzfsO33RBok/xuQzhLuS9kjv
	 TO5g1kkgPplvI5oyoHhs26iShW6uexQ9qEqWw4h0NgRTDqyyRboSi5hXUO7zNjg07h
	 gTV5aBs2cpYBGwM+19Faaux0WQaKCQ9FwV/1VYZfGj9E85aH0v8jo1FIi6cmm7qm/m
	 3fTZHYy5sc8XaB9Eehn0bbJtK7KCthEVw3Yy/JMFJChNlLLSIpOFwzLrwSFUORs8ZN
	 b6MoD+xOybI0e7DpaUmcAhU+5GdO2qP6uVa0Q0ymwFsNwPCv6MEhOiIpO3adqT/eTn
	 u3ExfW79BcQLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF4C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987299358.18448.11523075800845599841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c427015117f281d73f032568d745176b5a8c48332febd40fc1009d046abcf71
Date: Sat, 14 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749872993
