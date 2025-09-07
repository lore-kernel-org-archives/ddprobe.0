Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767E1F542E
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757246394; cv=none; b=SG7HJOHSgRWKAjEIr13co/awtxbtnYAB1I+gQW3yStVcDtwc5iLjkX+EEzME41W0Oh5HQh8UWGTDis7+3wYJcMgbKIDTj8uwVRH+pu8LsqCM2mttFvqK5rh27paCQOs5bXugvzZPdW/XGbRfEDDH8Fn8UC7b39coKvjwpQUeUQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757246394; c=relaxed/simple;
	bh=dbtflUrrXVU2MGR4AXkQydmlZSuZPXgJ4Je3gkp8S3E=;
	h=To:Subject:From:Message-Id:Date; b=QFW+jXtvmBSyNIGJc6SrXkSakPEcJpm+ZuWEeW+X9b/RbuuoOc6g3wnpisq0KihJkoLqxrVS1pvknp2HS+gK6ry40vGlo4Or8GJOJCB09xsctAUZJpSD4plrXG7OYpAEEGY+dex+WJKqLHbrnGSU4h4CpYYQN7JOxlwcmjbH+P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiL1Wikf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiL1Wikf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757246393;
	bh=dbtflUrrXVU2MGR4AXkQydmlZSuZPXgJ4Je3gkp8S3E=;
	h=To:Subject:From:Date:From;
	b=AiL1WikfdibhQkdj+Q5JKh42WKkD62d+kUYl5l8N7uV4tbpc3yzFShfjudtZ6gQ4L
	 ayjOKYbv19gG4yrKntHkTrMm8S+ktdD/uM4DxL2JkTitK1LNNVdbrO0VuGV0ZyOgZh
	 eVCs8AYmPnPSIYcKgNN3wdbXzpPVMpwreMFi3DbT3jPPkBi/zFRfRBBf14047tHyub
	 z6xR6lj9Iq7fqh9wn0O1MAHlaFrby4Y2IWN1L+sMgU+TkQmUa5vLFw4prlG/TAwLVz
	 i94NVxaLUPweLXsU89xCfVtbFMwHVlugwAMu7ucsxeatmOQIo0PnNugaPfdaCbJ7bb
	 9HJgBGV/N9KZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5ACA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724639357.10590.8099513530261887397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f49cb5631f05d2ba0d44cade6f61a1af4c58fc7c2e77fcfa85cb70b29d3e505
Date: Sun, 07 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757246393
