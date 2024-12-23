Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EE419CC0A
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734958553; cv=none; b=XzfQ0Pf+arwc49Xmp/lLtd/R9MCILN8DRhUw6nvKCOJzjuB5tIEqpfo5QednGh+uAPq/B7pywDgdU5k16RAHa+AzHMQb4NH//e3Fxv3T2LA1pHMW0XUx3EyCEa7cgFRbS1jJRqe/v/SO+uJ8kSURMv2sWjRJVcoRIK6eaYur79g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734958553; c=relaxed/simple;
	bh=cI0BP8XRf6n24STN8xPhJUG7Nn4Qwl2AWTaSbH0OxOs=;
	h=To:Subject:From:Message-Id:Date; b=ZtX9Ww33mduNFPzQtCFx9mak+p7c3e2didFO1GfnQtuNkaEzLNucDIA6ZFFTmgssjspKroqznsQyn9Z0eYywqKTdOya272XH2kBV3PX7kL+yK83c2JAycyV5WrcC/1+kTa4ZF1AlbnVY46xDTv5kO8PRSRcr0NgQqfApOy5lVG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acunL/bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acunL/bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E9FC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734958553;
	bh=cI0BP8XRf6n24STN8xPhJUG7Nn4Qwl2AWTaSbH0OxOs=;
	h=To:Subject:From:Date:From;
	b=acunL/bmf7b11N6WzOeI935ME/YHXBIwPQGiTsMb5szRRwIUDquxnY4W0Wpsjv0F9
	 Bt//KaEI5mxUJsyYA6bDJOL7kqeN4eLXqSQg3f1+iJzgTiJmM4GyVhVa4c48GowpEG
	 3RPBrHOQxsxr0dRCJAiAzFGFcroca/v4K+0WWcdPBGx66ee6Uyyt+xqK8bqpDWb6mH
	 /ki1DE3Hxpg67WbMEYZCNeHlFyQYyzhIilHiBmgtvw7ppv6lpMGKmQDCyqT5cU3/HQ
	 JQYofTg+qQJYLUAkosKb8xTul52N9LiJ7XBlH8rYLx+Uhsiq5tHdWIzyE8hnPNY1VX
	 RejM708q5QjyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D9EE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495855359.22422.1274889195379702593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ee897df5ece5489bfd3e3b56b7dc42e5798535780638b46aace7d3800abb48
Date: Mon, 23 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734958553
