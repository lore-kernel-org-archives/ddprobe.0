Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1948A45BE3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769463234; cv=none; b=GJUpb+FOz+R1MFbCaBKbTyD/o3nRQw1Ujh3VCqXRdVnU1cB/GXRwmT4/VIJ1lC5ItQlmKO1k/8PoFCbcAmKbphxjxbITa3npSBIbJvhuO7YlbdhSgMy2oXSVaQrfslS+S9EyyohyTXYyI3lfzr4myaIqm7aM11IQjAECTkY3FbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769463234; c=relaxed/simple;
	bh=EHHe4/5l/Zhu3DCqpds+AQOVBXt9PwJ5Nz5RCebC+Cc=;
	h=To:Subject:From:Message-Id:Date; b=ULTxRoyHnsM/4YAx8GVz5ZJ45syihB75aZ6qjGSAJGlsVugsd3pJug1tiuIIvb55p/nWTENxrOvilTNF2MMGM42YA37H4Zwqlr8w3n2edKZWBCcXG5DHM5KVRlrK3PRQJKo89Uivc5PYbS1qKeNRbH6QbK5CFNeseEBmR4H979o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdtxmhPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdtxmhPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A86C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769463233;
	bh=EHHe4/5l/Zhu3DCqpds+AQOVBXt9PwJ5Nz5RCebC+Cc=;
	h=To:Subject:From:Date:From;
	b=FdtxmhPhVPAkhwfe61H8AGQo2XWRNV/JklarNIP1+UrZsuPK+XpOV8hJ3wxWMhB9s
	 zDD5vw+W2agt1KDANLrHJsaxGxHHm0qyD/QRs9wz+ImJSY7NQIXOSS//dasXXCSBs6
	 St9m09IXuLbW9TiNlfLq1Nw3nOp5TZ/HNdFXygaawqrIAK21lbQ7cnCxtmscWcUvJM
	 tx0XMN9XP7N72TFZ7F4oxHEMD/zz8lUgRVZnEio6m8z+DeR4G1iQInTL7w/T63K8Un
	 SoC0Ocp0mZxF1NUcNkKsk4zsm2JFnUvGwJq6trTHCUFvFS8QnYRScfzrK0kYQ1p/u0
	 Fr9PYiDNDCPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7FD1951D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946323357.3612.3680999991695033438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77c89949b543a3e1dbfeddcfee4907e8563dafe49e5cfe24294072167674b78
Date: Mon, 26 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769463233
