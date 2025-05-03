Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C47719FA93
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746280794; cv=none; b=hC/EfxF1jeQIyq/LyXLUs2KMEKw4LieJk/IMhRm1o2UqpNx19Mkof1GCpdM7duWc0B128R0KK6sq5TrJER3k8JiS1cTRK3XU5FWlgpaMbvggoa2gqQKew+JJzB3vcdLFuGrR446U3YDttTZq3WrFE1P/DpcoulpvKb3GmoZjWk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746280794; c=relaxed/simple;
	bh=M4jjLZ5PEf6afp/Chj/T5qiC9pgXxgmOWbID4IIunVo=;
	h=To:Subject:From:Message-Id:Date; b=iGYXXiAc7oLPAkZcCJI9IaalDfWwMp2LO/SqOI2jFXbbMbUoPjTamX6FosOVOAuu89NRHU/rsFvyXThTo1nb5MqcNU1eOygvpF3+tlO7oxj/xMQhSnbvAgp9VGy77LKriOp9a3vVQf1OBJqkWIFWhyZCo5BXbJF/Zl1W38BQS8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H02/j7W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H02/j7W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5918C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746280793;
	bh=M4jjLZ5PEf6afp/Chj/T5qiC9pgXxgmOWbID4IIunVo=;
	h=To:Subject:From:Date:From;
	b=H02/j7W+znbunVjFNwV5AEdVGia/7DpB3LDDoaZhIoefoDgUm0Dp1tj/twLDBq2F5
	 1/ntaCyBmL7OnooDhF7Dc0XR1MBnt8M2pVUteSESBtJgFc1A9i2pWgutGWRahMyShI
	 8ko8L97pVxRRE8RaDEChF12l0y1+LOBNsIkfXNKZaw5ap0J4mDGUSAhKCoblSQtCJ+
	 vVQcFwLnrFhT7F7CWc0+9IT03U9XUrskmE7A2tG6AIc6QBmG2AB+J2oCHVpEQOyaEW
	 lO2rvYx6Fnr1uILFtTA1BwhdBSC6HuYEKQj+Oo4Ngj0FfiwVbaH79kcxVF1GXRFX7W
	 UiRyywWrf/Xvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC0C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628079357.29682.891586230244174345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799f3a15d82eba7713d539c0df46c3601aacaa05364099017e6337f993151c2e
Date: Sat, 03 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746280793
