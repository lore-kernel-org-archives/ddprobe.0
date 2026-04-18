Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A146349AEA
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776492454; cv=none; b=Sa3bA9uN2jDlCGV3PvWvPteWNBUG1rAj5PPtuuOgZMjRLv4ucfKI7jQcYhYtJWFalF04WPtDsWPbSzOPuoct0+Fj7QlQlbZ8DhyIGJncq79RZjWMZNTMsIWPDLc3Ceks4iSO55B0kUutCwae/WLGFu0td7q/sKYU4FKwk+NMW78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776492454; c=relaxed/simple;
	bh=vm6ChCwAa7iXTLmPZLyprhwX8rwmSLHbIp04Mf1s4B0=;
	h=To:Subject:From:Message-Id:Date; b=LKajr7OrbAik93nakgCgtQN5KJVMnag76aIf9NGugzIum7CWBj4h1UyftZxf+5ci/1MV9VX6J/7QbjUc88uEDnFf9EaAEHKEh5PadTBp/rvTDatTWVo41eU9GBeJIVH7m9HsiBUC6miT+Q4V1cszZAGhy1388slfOhIPOB2UIWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fnl0HjIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fnl0HjIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12D7C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776492453;
	bh=vm6ChCwAa7iXTLmPZLyprhwX8rwmSLHbIp04Mf1s4B0=;
	h=To:Subject:From:Date:From;
	b=Fnl0HjIWMHunxPiSKELmV+vDBKK3ytO4ahOO1U0hodcYehOqJYWuRLKzgwFa8gdeQ
	 sToxxGs8IuEIbU8jkQ94VZl/PEZ2ZGIOYM8dw8kxTGtKMwza3rAOUh25EDewludygK
	 jXCN2yntKYTT5FqqiVbOQOUT/Z+xXWYp49c3WEnocW1DGOw3jx/4BpHzq/StuIim2h
	 V4plO+n75eokOFHYmnZlCGTJaSpF/DyiVNaXpRdW17mVtOFi0mYysSXcJBKVSAA5B0
	 1cJ/KLbe1jbtYWc+jxU9aixLpWUeZRKnVOPZ0Duiv2kX/LhA/TRqsiRXxqpw/ndfzk
	 phxS8kQs4dwsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D52F436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649245368.3977.6400880440718734517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440f4c237595bf56d61aa275fb5eafa9b2e106a55dda8b044b874bab78fc5f40
Date: Sat, 18 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776492453
