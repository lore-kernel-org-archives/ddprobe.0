Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5DE23BD14
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745735393; cv=none; b=I9NEQgzDu9ckypuslK8IbaW55i38B9kVHzLYTCw8N+gmH6XfpRTqp6bfp1IVWJg0bwwL/evexuJn/V/oFtCqjyjZGh2WEvSvRE2mtEMGC+dEXIf9JVt3bajAOwLXpSRC7CqUyi2q/90HF/YRn1vI4i7sFrFeyhD7lsZK3uqO6XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745735393; c=relaxed/simple;
	bh=ouGRpeWYSSeUt6IuSJAON5IiqpHitypGE4hmmGvA4KA=;
	h=To:Subject:From:Message-Id:Date; b=QulzjtTBLq9zf/8qTivBd7QIYgE2mTwI+qdw05YcFeqpMD+yVUxODFHPjnlIRtC5ItfrptJnptspqOm1y1n/2GDbWKBp0O+ocpFKGRycYRM87JUMqsHGmUHnNXqhAuYh56z9CJMF1e6jRrjVCVHYNnXNqzh0JkW5cR8J0vu2ifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lm/QCTR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm/QCTR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745735393;
	bh=ouGRpeWYSSeUt6IuSJAON5IiqpHitypGE4hmmGvA4KA=;
	h=To:Subject:From:Date:From;
	b=lm/QCTR+eEo2WW1aHEiwPZwE0cB6mKghbFhe4hq6v04stOoQ6ySw1umBrRTPe7Ja9
	 4xcVMFVzEucoEK2taYNVgu5HgnNudugz4sBfGDT//PTRf1sHq3ZMGEuKWcjCbbj0LI
	 Atu5nL+GYhuzmUE/EKGLfAoBLaYZxMKl2N6HSV5spAV97yLGx+k9w+MHADMTeQe3dC
	 Gz5VrlZNQ4/+n42ESo4QqClpX7BDp1wxYMVtffo9qRMwn3/RDYVVs06D7TBVsqQ92e
	 IxnB8WyUYwXIwLASN0QSJB+VzPtEJnh6dpBsVh9FhQTaBGAKrQWC1Edd8OdGsB8MEp
	 iNvtP+7agpv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0AC369D8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573539358.31170.18403985360461829187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a4bb354c5879836f17c099930be7130c34a73cf2e09886d7fa1cf669cc30ab
Date: Sun, 27 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745735393
