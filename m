Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2176A231833
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748966994; cv=none; b=SkV9nJKcdWQS87Ezm7XRR62rlqN3csOQ3Dwh71Tt/+7c3gZTvb2dmJPNJZoKfKmH2/jbGOVUUAxH87bYzVRX1rCtkoXPz4JrjcCBsobCGNnmo5+tfI9VHAiIvEGlIxftIUf1FFDx3CN2xuNvjUTLOjMWkl0VBMcB/wBycc8Y46Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748966994; c=relaxed/simple;
	bh=UwiJNURbb1lRZewHmtX7exeDBoSjS3V6Zh9QoR9w/NE=;
	h=To:Subject:From:Message-Id:Date; b=kiUKePz+mgJr8RDlIlG9J1I6TcLyaR6bMmFAKZJgDoKLmyq61D/BkF5Q1Y/xUP4CNEP95naJFO/lJAf8c6l6tAoGS8ofQQRbHsMOP7YSl+kK3qHH+u+waHJK+sTyxu0GrsoUQ/vHvqtdPt3Fy8fEalG1dpB4lNC64dzJQWELkgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzX1swbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzX1swbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A009EC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748966993;
	bh=UwiJNURbb1lRZewHmtX7exeDBoSjS3V6Zh9QoR9w/NE=;
	h=To:Subject:From:Date:From;
	b=qzX1swblA3++M9JDIyDeodzjSRv5UYkw7CFsC1Ink+UFQyu85EDJjU1cLotxh/hVl
	 xLBHq3OsjhP2Pa50Fes7dEcYZcsK/lBbLhPYdfliy/oS80etm6Ab4tRiXRx8KQFQXX
	 irZ0cRi6y3zvEhIZbvbqS0XreTp+3Yh32KSx9MIL78kGW8Oeg0XxF7nI4BoAGhxBF3
	 f8Qq77o0oraw6ECcjAKmtXWBSxJZM1a8hCoKTdkbQZ7kzIdSxlPS+7IfVETrnk0sS4
	 4NedWOMhXk1HIxPvAQOLLobPM6miYqJOdgch1+k5LxI68btvSszkvhTkyHPoleEZpw
	 0g2TlcritkgDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCFC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896699358.32079.247947806826425207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55c85f86fd7e0f93dd6bdeb49c302dfa240bdc26f178cb5d97a30f536093d6d
Date: Tue, 03 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748966993
