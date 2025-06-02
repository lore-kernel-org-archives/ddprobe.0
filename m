Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78C82C324E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748891993; cv=none; b=sb/v0SqjGi2qWMz3Wndsjg5WJeQW6haB7L2cmHrUKuxTnxwbwsdOiUfH3XBeSJoxlmLykJt446coicXky4NlsoPDWn0h1Awb52blQHsVAeMDZWFCFN7dZKyf50iaR1v6DmywTx/owkoJkl5yUXbp4nW27288Xm1JOQvflLq7Kpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748891993; c=relaxed/simple;
	bh=1+fovrGP/qWjhFrACmZmGu4hPAU2AcWRLUyXikiv47o=;
	h=To:Subject:From:Message-Id:Date; b=GMKnSt7HbvKoD9f1MIcNCu9ISViksA5WSyXqRiDedoowNAqb4wlnp+qBRoF62eoxYH5BgvVxvhMXv9CP6b3T8EHPVOR13zPD4OLY7FfVD0VFHPudwT7Pe8YQnWBF4yRGVYtMOKHj/8iiF/TB1Xl8c90OsMNirRn1bqlkbRuIjjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIqcR9NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIqcR9NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A167BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748891993;
	bh=1+fovrGP/qWjhFrACmZmGu4hPAU2AcWRLUyXikiv47o=;
	h=To:Subject:From:Date:From;
	b=GIqcR9NVADSxVLq4iuUawpOAxoiUFWVRQlNFUa+DbDeRhAWu9H0Y2UyLK33QgitkC
	 2inN03ysyFhP6Yv4s+Lau14bXwqFvz7Tqx+VOFku10cUQvggyTOxtt6U+aBkBZfwWp
	 KN5Ozu4sWFKoReFz4daNus1i9efPBRM58yMURsV38PaWkuYAHv6WVoi4SHjSBIITng
	 LftQVgFEnnhV7hF6KMxTFlGWPbY+5UXHVO4afi8NmMqX62i+l9BpLOpXa9tKXvKqMY
	 KME1MYxQisCatolxLolEY3zk99v0tGGADDgtvKd+6xxJBWqxBBhyMmlUjIMbDamJwi
	 ZG6M1M8Ey2NxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90818C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889199358.12687.3401466220837650885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d9a4ff4ffc2ec829f078175bf9c090b1bfb2b888007708987c2cb29505a37c
Date: Mon, 02 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748891993
