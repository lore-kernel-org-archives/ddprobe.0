Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF7EA935
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759673994; cv=none; b=nfL7E7+bocbFbZ/FOkVeBQqHTtPdLMTMolS1NXi/HrqlUp7N1DVu0O06iVFrgiyBu6Ijos9pBHylMXlZ+TG3zuTZc6HZC7U5jhQYH5kL2yk0FtBPPRL/iFwedvRyFzQ3RvBLEfI2PAGxO+5b1TvijQVS1A4kqR/kvlhbv5bCM0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759673994; c=relaxed/simple;
	bh=isLJZSYXQ5cYkwk+b0SWfBa9+6difbn552a+1iPjhkk=;
	h=To:Subject:From:Message-Id:Date; b=WWzk0JMfVyT+c1AljncVUIanoGZotf0CrbS5bbEnRDQ6P7jk1SCV1TGMoaozdv02yHNahlQEefT7RyLhY+Jpju2/JLZfs+KflDRMgL4wSEfGr5T7OvwnliI/GL71PBRU/Vg5VLSBuUAiEfYUGLoeTJd9OJj1jS7c9nzqbj3iV0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxmQvNDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxmQvNDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759673993;
	bh=isLJZSYXQ5cYkwk+b0SWfBa9+6difbn552a+1iPjhkk=;
	h=To:Subject:From:Date:From;
	b=mxmQvNDgdJ6yHf9EHvdEGYEZQOgDMqF/4RYf/JZu7lHaKfFnbqV4o7dFhLEFt/FKZ
	 Zrrti0apggZ9jaqNV95AD6Z+hPR7PEL/6/pjdhszk7i5PTP0Rio1TjRTzfNH8HJzxE
	 PavCwa2BzJ1T90GasAPIhKKcJyz7Ru7hyqOY2fFT/RrR1WKwbXYHbcZfBJP0IhhPOt
	 joImpgwfw3HbSgVbbfxVPMCtvBuYZFIFDDP3GwGeIIb8gZ46hI9eo6RyYWQPgD44Sw
	 JDvl7NOucA/v2gYpyoF7LYfFa+vlvrlNQS1wCq1L7lBc6T04DZ9TnG8dWKb6efcMKd
	 zfMithj+6snDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DCCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967399357.29811.7014840074555865781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9f3829da2323bae3f2e5366f187910211e63d1ac184c92b1585991026022fa
Date: Sun, 05 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759673993
