Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A6B30100D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784901634; cv=none; b=retpR6yk4I8yr/4fM+PRBxJ/6GXhQ5Rdevdn8cntKz/NgzaAYe4J44A1rSNW5tgPefdldNT0uKeEwqC0pBntHqt1kt1dGKG4TniolmCsw8+DxwvjjryfN145YUYD4YBOJpG3CRtbNzIuYdHSSsfPgWBxuWSuNi+r234JVLW4pgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784901634; c=relaxed/simple;
	bh=vh+8VH8wRqF6xm8ma/AFXjosP3yvhN0KnUlobkVJDqI=;
	h=To:Subject:From:Message-Id:Date; b=J35KylIXIK7v7MOx8L/M8x7BZwfPK3sO/VGdFZi26BKfikY6RUUGh0NkrFas5BZwvCCKeAryyBc0oF/xSlFsJXUqNwdIJBl2YR0fUgdl0N6K4R6Woxsmib2q1xYmspNJYnK51TBAlWR6s98c1xtgzGuzABCqwPiTvsO2/ssrOK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af7hGmPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af7hGmPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC89C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784901633;
	bh=vh+8VH8wRqF6xm8ma/AFXjosP3yvhN0KnUlobkVJDqI=;
	h=To:Subject:From:Date:From;
	b=af7hGmPCRVgqrH+YPsGsC8tKaGnkxhK0HG/sLSP2cyF5QuK0A9B8zwfJh4FtbiNPX
	 S9cRAaMRGhdhNGGp6NL6svnEM2SWJs6HqguLKZSb3zvToonoKDTOHgMrTP8NiYgyIE
	 hxz4iDj4nwzyrMsSXM/RM/mBZQIYvnjLeXyulF8GyXQ4CN7lQNrA+u2x4gq1lsEKh9
	 C1L4NwsRYV2NDePMwyQPHLr2XPdbKZ+6u0iG8AJ387uj2ab0eSin3O7tMs4LhCsu9k
	 Rjz49e8hCCSEqVp6yYE7JHIU7Qg8s/yGS2uQzJiTrJPNTqVeC/ABjJmlAPMTeZU/0i
	 eBOD6vR/DjR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DDDC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490163368.28087.1924729257041167799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4fcc173bb31def13fd11335c79b50c973fa5e901931e44681f8f3771e2be48
Date: Fri, 24 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784901633
