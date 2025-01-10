Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2334742A99
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736492754; cv=none; b=hOUz4ziO2sta8qwkA3BLKhOCXAXz31LcYRzSAXsDu3WFQDdFqMu0IW28/IB/tCXHXo16x8AR0eUr9NK5xa1PdqOLkgJxg5kh0UqJZHlbifViCFxsyYR+S1OFrEpf7ti4MhQG/G/cusramJm/LySIBmhRknbnGylWaAGbDo5HDRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736492754; c=relaxed/simple;
	bh=0v6cWIarnbUlDrVz9KZCU+Dc8aYsWnEZD75zrdUkcTA=;
	h=To:Subject:From:Message-Id:Date; b=i/gjtBlH2g25IGLmq34VZRIICJJe6kJgR9FCq0vksfM7W5DoA5jIl6qIrvpxaMQnK6VI9NQJY2oVtO8Fktrrb+aEWlVYbMeHfYGRfq4f40HpvCf72ikcllskxsx++FxTAByrzzZbSPCu48+kE9l6yHgduSiLov6boNm6O2qwn9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaQCJbO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaQCJbO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6825C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736492753;
	bh=0v6cWIarnbUlDrVz9KZCU+Dc8aYsWnEZD75zrdUkcTA=;
	h=To:Subject:From:Date:From;
	b=CaQCJbO3XhcQBHzIwHi0COwyP5Wdl/1LI3XEcCoIGhRgmDTfhwPOfNH1T1z1aFzbI
	 P3h4aRC77jxhghQpfFS594Z8qLaGJIBeEehWNfyiG9HjhnY9G1K8pEmHAYjEiehGdC
	 dqGdzvKuKYS6h92FestfCLbOWZDVGLxmEIiNv4xp6ClFHsQj/A0ZxAlBBujj2Vfjkn
	 qFtzOE6KWXQ0IbJoYSMuXPktB0ZVlGypt+Ij789CSvQH6Ys+J+aw2NY+BUuLlHvBIs
	 +gUqj4opsaDl4dwZc++eWzwNYzjUBR+i9JfapAe6NiPqp8tWbOZU32qeBv54yp7kvh
	 vfLAWh1GG7CSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402FE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649275359.25258.14991099013508132041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204390158f9731c9e7463787633f577e014880537443975d7230eb2b1379f267
Date: Fri, 10 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736492753
