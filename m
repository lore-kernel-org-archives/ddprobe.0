Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5B623505E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765332174; cv=none; b=ZjwQrtIHOe2W7NxmAzty9Y354/vId6NZB1I8NAiw2brJ+ZlXiUxZokXQzEVRn28/AOG4nWJFnnGCPgutQExxujyBHuYuA55XL3gDwTZdZ5gI1oUeni9MppPIWr4Ype1+ZhwAJNS172+hM749ohfrI1tXmEqxLdlyGwTULLFEIWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765332174; c=relaxed/simple;
	bh=vSCrFrIBUf61H1Wc7XKU17XvFMHCRzWMG1c5gVrey0g=;
	h=To:Subject:From:Message-Id:Date; b=L+5jF+VtGsI7ESi22o0kC1vsYQNJBmszB7rZxGEQQtsmdsD6ECSXcNxbb+MTGlVN7DmGw2e7rJe/lPYlfPxgeasMNmCoOzceVcrXS6X5c9qFNiuF3NNO5AEAbEhLSf92wFSjbt9jehuv5ULKT+8kAa5qfVHPsXIkxhEPpJkbkhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg3WTvP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg3WTvP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC41C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765332173;
	bh=vSCrFrIBUf61H1Wc7XKU17XvFMHCRzWMG1c5gVrey0g=;
	h=To:Subject:From:Date:From;
	b=Pg3WTvP8okQo/3vBaNHdbyNRNjPA9oKe3P+mtUD+i+I+xOQM2XSxCyB+VIfOgL9e+
	 /AV9y9qM8Yp9FRZtcAhB207G6lAzZe/9APoo0yR3+1SGaAO5+FKLTNt0MQms3KRPCw
	 NI/NfotuAUzT2zm/E30qVOuMXxWaw9HE9fPSAWPacQz4bHq2AniPMe+1MGhEeqN6eZ
	 BqIYyAkKJavqtXgMODFqbsoHGNXhaISNWRVVapnHC0DmxZkB4uDAHD0e4/RdTPmOCp
	 NfoueNPXTqWM0koVoW/1URJbfxKmOmvaA01nvPDRw17qY1ogM0wdiFngGz6TUZpvTE
	 G9fjxanybEOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445FD3B995
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533217359.26034.8631967475881597051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0766bfff0fe153c542b587c75d056da578ac91dee4ad171da98f926d946078a1
Date: Wed, 10 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765332173
