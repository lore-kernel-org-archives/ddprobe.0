Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD3F19F130
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744679394; cv=none; b=giEYCi41/GtO91x0L4jQ4AquK0s0pqybXgq5AoMDaAlRNg0JWLFoGg/o4iJsC1KdMDySjFtTJGBi4cGYdYG3cWQ/UmMo3MC1ZNjxCCRYN2o1Y/qdyWnBah4k7IB+hyYoRqrD8cenk8ImOe32NkZpeNcZGRrf0A3R2SuQ+JGvgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744679394; c=relaxed/simple;
	bh=QTQrN0S0qRfSUcQCUgiyWG2h68XQvsC//7WLGaDR7hw=;
	h=To:Subject:From:Message-Id:Date; b=O0aMlnn3zVvAy35s0hzyEDxmTFBvHjUBirh+5wkU58BUyAIx0aiCuR5WJNdzyR7u0PJaPZQaDi3GXR307YwQqdMd7gCCEqsH+iZhcwO5yE8lqzeUVXTlwzqA3MbrhFHkMJTtWQRFLHlNYMPMB1Rll3iV+qNP3Rgu/+t6SSwdl6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E61AiCMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E61AiCMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51DFC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744679393;
	bh=QTQrN0S0qRfSUcQCUgiyWG2h68XQvsC//7WLGaDR7hw=;
	h=To:Subject:From:Date:From;
	b=E61AiCMeT/Ye3ElxTVNCG2EDXpRaN9K2s43JYiEGu5YIKAp0TqLiivnNHawG5GXey
	 +7nHaDMJ5mIBJs7B7E6+dDCW6z1JJbbP94INJnS+Qt8EueGhR99g1YfNSFEvzV2uyu
	 T98UkniXjZk3XNXqLHh2jc4H6gIuTIQufpc0nfo3e6ThLWxZfbhekJuxXvF4nrcuSn
	 ug2rGMJYqOWdD3P9r+pLarSqD4clN7BNjneJ1E2g0O0KO8bud0TZihtg/a77Mw3OKC
	 kpZGK6M9Zqlv7wJqsOHtKVTycUkGwyk+W3tGSFNCfafx9f3nLnIa7OzCBoIfHjgTpC
	 NR3UMEpNFzHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90878C369B8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467939358.6405.18013902816062713200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf02a24cd6ca692e45490e83882ffb41bb0f03d6469d7256903338475c8ee46
Date: Tue, 15 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744679393
