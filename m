Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589653D66
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718388503; cv=none; b=kcEmvjaeQFcz3CP0fJFO65wjoKBTUVeJcIfZYDFG6a83r3zpI7m97Eg5MB9jJvflu5Bap5bJ+a+L2UP9LH0v9NmvuOB/BEdX77Gv8EVzGz2bd2UrDtB0V/oHMznad9jwJY7gww2OB1gRUayriAO8T17LzOUYVMk8MsEAFWqZ9NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718388503; c=relaxed/simple;
	bh=A/9ywzWzXQH0nJI6zillMjZ2vOjOy84gPUFFYBs8ktw=;
	h=To:Subject:From:Message-Id:Date; b=YwEAmDRK5wzKLWcCq0TUFV6ZwNgjGu1iRvVvbTEJAguOK5aM2BWfL3xJTb/h7tkG8a8T9zOvmoXctQ3QB8xpu4WyCQWgrSA2gs+1ueEOQfOp8rYkVLvLTVSQV790jNoUPD5GeMUCbo2vAWFfHi6SfgG0e78l6iVg5TBHfp4Gt/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATS+TJP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATS+TJP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B66C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718388502;
	bh=A/9ywzWzXQH0nJI6zillMjZ2vOjOy84gPUFFYBs8ktw=;
	h=To:Subject:From:Date:From;
	b=ATS+TJP5XWWSaa8/cR663hxlwWJ5C2oNg9gqHaQXEoN5kXHBbnFJm7ToDt981+mrn
	 kelPodtCqFEgeCeTI8l8ynOkWeQAFQjAx/lJ41QVRASVe2rTao5hkfHRwv55ImWJiJ
	 HlU0J3mSUdGfgd3gahkdcrVX+/N1sKGtQi+HUfqmWjY1iDMMwejFZwlK+bWjU8zrlS
	 9ZDJKWDTItxFu77l1RRd1lbX8Il+XvBOtakXVqNxw+cYC0alFkrbp7QHtNoWP2dlMU
	 DoQJe+TWJvfUwqr8PN6KZkk8wF2Vh3ey8q3rzW8kBJXaRK1wYJp0xWueMNPsoAuMLj
	 So/x/kjPxOIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C365AC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838850279.27784.14056958624971877339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74788e860f92eebb81ceb5095019d18867de30f1ec6457f47595693be103ebbc
Date: Fri, 14 Jun 2024 18:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718388502
