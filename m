Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64C42D8371
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751650793; cv=none; b=GXKQf2b/RfXJVZQHvYkRvgbBcAMX9WcMhJ7Hpv95A7+XZVg318rsQ4eL9b4eCkVllAKE3LeErA2sFpBmOn/h0Ts5ReU70ngVSe3n3JhkcQxoEt5cr5yjuYNqJD1tMcBJfl1BCJG3IjgOj9jwgVSTscrxw+hrk8p2kDriJBiXEHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751650793; c=relaxed/simple;
	bh=BdRFmlwlaD1qW/4cfn/itiUJIpvvJDThQttegeuagoQ=;
	h=To:Subject:From:Message-Id:Date; b=Tc9CGJrjjebMll5hPHe7br41xBHptfTQu18V8lUXUKVCZIz0T5cSP9e7fCegaVbOb9cVITaNCmD1c4RNzKy+4CIaE0wZJ2ly3cC5v/PRjSqPH5fygQ9gVi7CBMHYfL58ZsykvK81liWv4yB8Ohq7f8uIXWfO+DZaTLoSUoFWcVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGLITf99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGLITf99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB8DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751650793;
	bh=BdRFmlwlaD1qW/4cfn/itiUJIpvvJDThQttegeuagoQ=;
	h=To:Subject:From:Date:From;
	b=uGLITf99B6iAD0ur8sAuFj5lKStSunABkgVK35l9Ze4W+DTIHO+kdt+6fYAb4ioox
	 iZL6RBu8xYWJYRFWvIFIiQpqfmsAkSdHa2jOHHAi+c0PIzouzoL5Ts+6BVlmh2emZg
	 y65fkt2iNPQbj2w4N+f9M3yxNak6FpcDjz3GLwt+0pgdibVNFCSR81wxRQo2HFPqcj
	 QLPI4cF9I2oA8tgX7l3WumMQxIgT5Apfa7TjXEPJfn3wwwpqjmLoNGKqeRkGrT+Axw
	 Od+gBuursOdepLn2+4HmPolZZKhC10YQP1d5X3mLhu+sv3tgybP7g2IXkYSlZUwTO8
	 b3UXeUsi7nCUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40EC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165079357.20989.11425038997711044873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e5d55c4fa72d4aaa5dd457d8d4cd6aadf89fb598e0e95c2dc62c319ea7592f
Date: Fri, 04 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751650793
