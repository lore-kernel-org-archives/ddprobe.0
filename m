Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD9E20F08E
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760341794; cv=none; b=YIf1vIXRlCj+i1FKVWVYqBPVMKdS/+roWlrBVHehKZK+nZeM8lEjMgWyeCjkxUnltoAvF0fDHZcwmqgeQA7xnXweuqPk34CEUUAmcjXUtClTZrM8iei36tfAUROf7sWVf2Pq0P8BKhhn5BGGM5FuArNI2+1/jCYfcWKpibeeMXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760341794; c=relaxed/simple;
	bh=+YB9KDD9OUS9TYhb2ml0FoaCwPnRZQYE+YeCOnYSERg=;
	h=To:Subject:From:Message-Id:Date; b=QdPmLcolkFBiW5h4IJ4d+RfRPd1LFB6HkSR4pTcQfWrmox9+0rwBMs/Wfh+9FU7SVfCAySCICm6uQWRLEfWOEPb4C/qvu0hlpxnWtrhJc7uRYBNG9CKnOni9HNVmFCg/cpnF7ITE52dc2KpjbYive9mURsi685J+8bj9XMmUlcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKNIPoJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKNIPoJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760341793;
	bh=+YB9KDD9OUS9TYhb2ml0FoaCwPnRZQYE+YeCOnYSERg=;
	h=To:Subject:From:Date:From;
	b=MKNIPoJJbyjkpDpMbPq7uWhecfp4YXfq/cvh0SS84yIngCBEkKPh4Ik8JPTk9Rvqw
	 9g3wtaDC9tUVI+Sg3fC3940Zk3Kc6+WbxgA+d1kYrwZqhUCGUU0umKvYFBo5fZ00X/
	 BNLsJPfhOx594y6l7n9Q1SZ3Y8+adPj+EPEqBEiQoekr7nybjxz4t9Shfqym+B7HXW
	 Qa6pHoat2G/Cggw6RP5WYgXCuEUlgaeyWxs+oXUcY0AWk93m572WAJANQxmgPiyOTa
	 bPCxYKiKhBpQwM28U74y1p4R00kFzeZC7v6nxzi0/vPsGWkewPJWMVKZgDXRyVjeu7
	 5e1/GwE+oTq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DDCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034179361.20989.2735030138156585086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5421aca0dc924220eaee65306b65b23d45cea32799e11b8b4d3301042a75af
Date: Mon, 13 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760341793
