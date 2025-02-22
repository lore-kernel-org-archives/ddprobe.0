Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514A213B58A
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740199734; cv=none; b=PVuEhA/o6/m85H5bgNvCpXSppu3jt/s0q2qdspP9TwTs+fJ9dnK8G5qyqBv3fyMJRnQHgXQLnckAuq1GKN1kTJRTqOAJzS4KN+aKECDbVvyFPB1upvFaAGji9pk8uQZgZ2mV8m9ZCg6JKOHC0MIgA6k5OD+hE/VTjebzMEc0JV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740199734; c=relaxed/simple;
	bh=b/xndrx8eQbngjXaXXQc1ifTxXAGq7XhDK/tjUhV9dk=;
	h=To:Subject:From:Message-Id:Date; b=nmeEpxCOm79Ox4B5trexcGeXiul0bg3wIP5p4zJs+mSUXhYfJ3pOZfMgOao1xOhevEzBzyiM6och4YMc8N38aVOfmZWvIAAZTVWpR2RlL9t+yx5QkLjNIZn/cy3IYbflJKqm8IApj7xnNsl28+t20S9ZdEye/Zn57jl0+9cDBVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWnkcmkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWnkcmkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98C8C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740199733;
	bh=b/xndrx8eQbngjXaXXQc1ifTxXAGq7XhDK/tjUhV9dk=;
	h=To:Subject:From:Date:From;
	b=BWnkcmkfBFnusG0ZcUu0oMtykfwJ5xSIm1RHGN+f161UgSOTeIibwUxP3h9yEOefA
	 /kJUnGrKwqzyKqZF+O48c785xGNFQkmUazROMpJ94DsfhmE9VcqaHBEoMBWpwI6n8r
	 nZplxlaxEwFxX/nsOxMZBI8llmGpfu7uxshY5YjnUDN3nZH+FDE9yS2EtxC08CZKpG
	 wvgtCZ3VRdawzDJFPjoPLcpT8IU9EnC83aaHqfAtY8zB+vavg/Z+IvkuTiChjpFKsE
	 gUPOe947aYiQV+7TaI88Cw0aL6E5oNHuW/bQsn2XgqkRiCaQ0DWPNiSgVa59AuxRm/
	 DSAgjKCwrk/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98093C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019973360.28916.11287348139135400763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93518a09e61494efefecf25bb6719881f4e465c4733e71f40499e90f420e3682
Date: Sat, 22 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740199733
