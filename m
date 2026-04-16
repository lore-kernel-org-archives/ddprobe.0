Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334262C0F8C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776380854; cv=none; b=CRDcZjT7xR/hAu15LMiHmavU+8XLbnrjgFwGbRMhfc8lesFAYo4AkUMyWXJgGnahyXsyDUHXFsjb+3k1m5DF0isO7zMdJjqr3KKjVY8W771hYVplafkbXaK1FYm0jJEwbkj0xK2Y2oT2/H3LypM6C+eJ9whZaVJZVwUFJEwSvkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776380854; c=relaxed/simple;
	bh=wKr0ENUntAgCS6E4TQM85EkJh5dQ7xZd9VHvyPbq49U=;
	h=To:Subject:From:Message-Id:Date; b=oQLsOggRgyDBq4IeefPIzHHwXWBLWYHJSoi3uMOqC0nE1F2/1jJQ76b3qKnAfetunX8NF3OFK6QJ1U4v36Aq7SyXs9IPe901Ajq4edxK0SogYPPNnAu0nkJCMHVGu1NJqOtA+GT9r72g1eA0nhB6XuOZCb4Z0Sq4FUnQuQlNoE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+vBUARG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+vBUARG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD88DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776380853;
	bh=wKr0ENUntAgCS6E4TQM85EkJh5dQ7xZd9VHvyPbq49U=;
	h=To:Subject:From:Date:From;
	b=a+vBUARGjYylmTTdnHDXJ0AbSiaM65kDAGY0kDnAmlRcuX5dkU2KFcix8n3e6ZadM
	 ytNlkuAfpuECyGWbbhLzWbJfkbXjEAr/LvwUBeCUnMV3sMn3Vuaj55zXr6fMczEG9i
	 Uy6O/vfNJs4VU1DR8a/9pOJTmAPK90zrmOuLAhDQ3pWCk965PzDTFMO36Rx7aLKYCZ
	 yNqreyVGU/GX70Uzrl4pW+mzuWi3bGLfio+tim1Kwmq6bVV1T1uBmuJUVaqeoI3j89
	 MmSV81ThGHcJ9x4bkPvDXEqoCCnT1OhvPIP9G+ENl3oEhah6aQFbOFmZczTQC7nXgT
	 zmOv+FPh+ztiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47DF8E48F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638085368.18015.11946133344746099230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f337c665d8d8bfc4a7cfd59765b831711723eb6a139cef9255bff9f84eafd0
Date: Thu, 16 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776380853
