Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F56227BA4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767752634; cv=none; b=F9gvhSZh+r6XPg9msc4aejIGGdLitdj+eZOR1QhsYKthFTOQmxFcjO0NaCMY6Ad5F3kuFqdryxc/ZsCAlSCf/COXg71uGY6nDeZ3xJnvu4GlbfMUUnpM6tDBt39mRcxB7+hBrE92vG38MUrSQLvg5ByRptAVnwokJl3rKKWXzuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767752634; c=relaxed/simple;
	bh=WbqYgznWaj7JBRUGEEqPXUvjF6SxFtpVsnWYwko2ICo=;
	h=To:Subject:From:Message-Id:Date; b=RgUZNK1a8BwuwFqAlAn1giPxK/uKDg+rrOmztT0Jvz25vlngKDRgre+DypZR66QewOR6neqMISS5ywBgi5KXyi1yYSdYs4IlpLJDiETcHpx+tMy+PLQ3fJd2dMOpVidtGECrc0SfEWNwMT9nvqaGbVCyJpBQxEZeQYS3/MZqYBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfQZGc3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfQZGc3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB39C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767752633;
	bh=WbqYgznWaj7JBRUGEEqPXUvjF6SxFtpVsnWYwko2ICo=;
	h=To:Subject:From:Date:From;
	b=CfQZGc3nWKa4QcsjXNLMdLHpeqYjjzK/3Od0NulE/lSYNqL+XjBEminG+1/VDllmB
	 1cGiiJVZ3rMotoPH+QLXAxRPZQOs+PypjHHnsF27+4vl7lJebWfIx6eH5uDEbLjqDq
	 52RzP14oBFZNdHIGhz1pceAWFzW+YZrK10Cv98f2CKRAfDFc0peyAuDEASiRLa/5Xi
	 aq/0+Ato4eh2jHChVbOoFabUCuv/UGIZ3yGiD0YkHhpk5xEiJg4FPY/JDWPK25KH3n
	 YD6BJgHpj6uLUodX4hTK8mfi0+9pPOTlcrNFggA1MPyOS5PVWT84Y/wfrkh4AKW9A6
	 suV6Sluc7aX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B1CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775263357.15236.1723806960659343626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a2984078dd2f19d2cf6023e5784fd373bcccf0db6c96d75e774c380d441140
Date: Wed, 07 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767752633
