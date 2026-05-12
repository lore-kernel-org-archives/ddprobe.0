Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1817081A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778560234; cv=none; b=nyhOTNJYuEr46PplGSPwUfl3juzTm1c+fFufqaxAAeU4xAa3GFD9AEU4VAaznKYrY7IvR3UPY9MZ3aZ8NXACPw1IeJsGtdHQh06Ij++GcvDdG4mZNxHVxiLp9HmZQn0evyDxMzMWcrjdccXtrVUcYod0jKVwY+N+IDTexH8KELg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778560234; c=relaxed/simple;
	bh=vETgraHwn0t/6wIT0qyxzK3UVUHoPFxWAMGrY7aBiHE=;
	h=To:Subject:From:Message-Id:Date; b=RchUu1AoQR81se2fUO0kX5zVJZQ4Ee8DriDcwuZ2RxLBc7Mc/aDjlvh/yI4Hp4tbY8DExzNRPcJ+zGle4+cPOqvmsNrvFOguP4swgTJVGIBcIoBec1BXUIYk4wuYe2hgZcwN6oe6drqleqjcFzchUUWClCnlLbN8sD/nwgNpdVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5HiN5mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5HiN5mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A96C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778560233;
	bh=vETgraHwn0t/6wIT0qyxzK3UVUHoPFxWAMGrY7aBiHE=;
	h=To:Subject:From:Date:From;
	b=q5HiN5mxMuT+fMSxE0zEDfinSiXYtOYnX35vVpU1g4r43WiSMsAsgfqTI052Gcc8m
	 9enp/2bUIAHOm4VqU4BWtybKW1ku2QDnc1zD3bEQ6dULgMhwgULXXKCVn9U+d1Z0D7
	 Pgp8kB4MoXQvZ2jQBYWa5Om5XZyWaQcPb64lqn9sQcMiG7Ij6SjUEFNmJ9Sd1WCiBP
	 MMSEr3B9ckcymX3sITl7NjzDc8U00aQ28BBXmcWIPyKOVRK07zaSsEsgN02fE7FHs8
	 geNAU/D0sYocqkRJ8opahdAD6zz8dQ+Q37p0mY5/037541nhdCU+XqG4H/1LLZPOHD
	 GSuEv5qbQeM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF476CD37AC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856023370.9087.432478570063055369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d1ab7bdb22e13d8fe2b3bd9adba5165fed75d8004aff54534120addbd879cb
Date: Tue, 12 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778560233
