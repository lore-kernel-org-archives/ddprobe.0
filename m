Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84021FCFFB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748277594; cv=none; b=nRFb5T/ezzK/10s+0HhHin67cUcaZ5mi0lQFdAAAAKQksxIxCr8aRzbZCQ5m7Fk42WTCmSvSgtcnbIBChQInvRvuZ+et/H4l72sw/XiSXAR/u43pt1FiPBqx5rBCEHpNBWFZxZ6ayP1rMJNQwamXffu2EAQ+7lPBX3YvNswYG6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748277594; c=relaxed/simple;
	bh=WXEUekPZJCRTnEv48xUqa8V1jHR+GiRCODCHJZOhRcU=;
	h=To:Subject:From:Message-Id:Date; b=KOYb1Kui4BILk7PZZ9vS331r0T+5NA5bjbcbqDQ4RHs6Wnr+cFrKEWlqcHhNux18hwYHg//xh1eEbCnCKZ6p21VZmeAPkHI0aNrCXt8+45ko3DgyA4BlbBAnhNw6DQ9xQBGHFRY9ithX1mbtdJuNwqX80pkYkWjEKUIS+RJ32+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDxCbmEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDxCbmEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4295C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748277593;
	bh=WXEUekPZJCRTnEv48xUqa8V1jHR+GiRCODCHJZOhRcU=;
	h=To:Subject:From:Date:From;
	b=XDxCbmEqX4trOsUcGgY3m/PfbQm33nd9cypWbFwklRpCfna0D4HW2GYF5X8fkFRdK
	 ug+ATPGv4fgORuv2bUjbWyiCv9u60uDHucZ+fkKF1JgXJHGLxCtJwvyUt88bNNdyyn
	 H/3GkBWHrjm439hYxGHKaordvr92iRTjDUPRtS+26akX2DV4nDxySz+eP/I0Yq4aSZ
	 zlYUAUxonJ6dzW4FX9gR2xuNdWihcmUv9TfX8cX3AHG19aW+b7bnrSwwvkTzbHiBuJ
	 exs2vDAMOaC+/aSwZBDUsyfTBfLI+OPLsV53wnOQLmrH2/4pmc/MjWL1efdfHuYgpN
	 6HJqtLjPek20Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00B0C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827759358.4413.9256984899283636993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cbf67953738dca5f930b46b3936c0c73da52d60891a9451bb941e079b42c57
Date: Mon, 26 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748277593
