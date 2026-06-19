Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CEE372ED5
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781864794; cv=none; b=o586e7WY30EhzuaAuUhAkKqGb45YDwrM9erTjRfA7nXsqnCVQJyImfp+BWbM2l2oDFsAUEMvselXKVnqw/bI3O8QO4yL/5u+9sg/k3ULqJl0ol8lM5zTim4qI0v8snETTa4yMOAh2xGTwBnjGnGPuxIG+WhXZt+6dpYyAFlSJzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781864794; c=relaxed/simple;
	bh=10J+HjG+k/s52WaWomHKGgZngBXyjP7Y9qaj/H1t6P4=;
	h=To:Subject:From:Message-Id:Date; b=jbNplM+cB2eIULKjrRux69UTNzOygYPMr7pj8NsXFfsfCtLjK/4hTs1g/7/Z1i6lE1amKxcwr4k8cQmxndyewiQTNlzpdCjqXIBf6iXoNSsviRYT492CRyqPNpg+HP+hOlhumGSCmzYOGTfQp6M2EnbTcPAbSsmyJbwiTgxMKos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGlBsHNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGlBsHNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21EEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781864793;
	bh=10J+HjG+k/s52WaWomHKGgZngBXyjP7Y9qaj/H1t6P4=;
	h=To:Subject:From:Date:From;
	b=JGlBsHNB9nVrGka64XZL7Ne4YBB0q3A7kF9wyeISSgkpPqsqTuDKPhsGauI1L8AD0
	 +MGmZB2dtBfqVeVmdrrO56QvCmkke0GySPIBn4kzMjrxenJ/db/7Jt2f1EyXHlJVGx
	 yErVQDLT7cAGIgRQ1mZBl7i1PTXi+zNPxiTGG3VlZ2i6Uio/QFZV7x4FKimbZN189a
	 jUC8gqH+BK3Y6FOJKh61OoA3rwehCNwkq9UY5eDA4DqIP4w66ebCJ2zmPezRF67+Yq
	 2BDHOVuqHt5GBI1wM2awMuc4IdzV/UyIjACsnWC9iSphfSbadFHgTfPxwYejlXTM9X
	 QTEMwOnqGK6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F4CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186479368.26835.3386792548754073684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07417afc49c06ae77aca3327b52e29f68b5eee6442cad8187ca8d45a7b980d3a
Date: Fri, 19 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781864793
