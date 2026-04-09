Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4031A682F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775758054; cv=none; b=s+WIiMfRIvcgB0TflIgdo1ugGxf0y1yYje2uXBa0jB/ts0g+6FZsc0IeK0Uha+7WF7Zrdvh3w1S86nz6hoHUQvQLyFU/JS07QUxmcGbHB1OCodeyCZ2vIQm1ITUhsqyhEd8z2KGI86qN7iZQ1plXrjgCnUxG/983YPGY8LZrDlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775758054; c=relaxed/simple;
	bh=iEIC+1em5k1Jpj6ymz5duC2Pu4N0zLLcAjfn7zicvxs=;
	h=To:Subject:From:Message-Id:Date; b=mnXSY36cEn1TtazLfNXWCPM92+elJLPlwLGALNG927wHEM8xvt9Cvx9eWft1gPi0tXosn4kTuBIzFjN3/ERv620riCKU6eHlxDtXfwWnKXqcnIwV5GFvOQN/r7NT9tyXCXhG6Dsm0NkekigHWi8jZeHKEzZitTvVSWeZeCwnzhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psBHRWbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psBHRWbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC6BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775758053;
	bh=iEIC+1em5k1Jpj6ymz5duC2Pu4N0zLLcAjfn7zicvxs=;
	h=To:Subject:From:Date:From;
	b=psBHRWbSkqeKbxE4eAN08haGdyBv/QBxAcGzGm1b9z4k1yn22Ymugwr+EAXeW42T9
	 2CC46lsiSItR3qeXpMga0IlD8xnUkhDmQYHv6+7EFda3B78ulCVGbnCefCl1LKL6wc
	 13MhMhmOsPKJPo93aNtYGs/Ed9au+gABclm2uC0CWw3XC4i4q0FdY7EB7Ovd8gvWtl
	 MIwmHX0eB1ZY6/SLsB/lD5ZC4yzt6mgEZpKjEWHb53+8CWfTpgUmRR4nkGOHtr24Og
	 OBUUBsEqgQKsEcsq09prRYzLHNDUQPMgzo7cZQWt0wLHkNw6BHuvY/P9iZWQ/frZZv
	 oEK6WX5e/AjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5AAF364A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575805370.14626.14870960948335746441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b42a592ffd57f8ad91dc52b068fd49436e4490ab205e0ae7bafc7b8601cafd
Date: Thu, 09 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775758053
