Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C1934D4F1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772541893; cv=none; b=NqUR7zYzJbD38/1pDQT8ph/VfWuPBL+i0pDYZLiXSSfSE+OxgkPbaJ3c840HagiBUBVJuRAUJRf9C3BS5iP/90CIPABIweXjsTR5bumJTPocczL2ed9LngEXt8c0/R5kpCpczz7+sD/gkb4QvjMVYLyVD2flVmGPJxg+q76e3g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772541893; c=relaxed/simple;
	bh=uyKUu2Rw8d/NCvnjm2QCAGTStJ5VIkjZrQWXx660HXE=;
	h=To:Subject:From:Message-Id:Date; b=TJcqN8gTJW92cWabbDJecApW9IV5uZB3TxLMAXtVGFWCqaD4fXKIr1j8y9d6Zys1f/w1+PqGa/OM1n0g900EIt5NNlhyqra7fiTBiVMR7j1ZMGWM6ZNzcT8Mmve3cvlbEGOjBO3OS8qiC4SVo/moPHsmCQXFMXXqQoNG2nZaaQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMewXu0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMewXu0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F5CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772541893;
	bh=uyKUu2Rw8d/NCvnjm2QCAGTStJ5VIkjZrQWXx660HXE=;
	h=To:Subject:From:Date:From;
	b=KMewXu0lA64RZwd48Z/MQDzSICn4xULxvPj9lUFOMJqYOf0ZuCt6Ir8t54EKFIPDU
	 ERLaAsl7RUdekGNH/K9Koj3GWFjwEb+D7gYu9frX/yfldNNLVh71hqhNJF4FBL2MIF
	 6xqwBp9thEN/CkWsWPXOJBll5m6VsxDfBvRcZccZH0YH+7sI7fz4O5m2kwTLjc8c/b
	 FTeicAyBj/jeRxE0e+bPrc/8iH57Xg4i8GrLDuGP5tFefePE1NAkWI9bNKJHPZFgsL
	 c3Y1zbwFnxOB3r8hVhgzOSP0E3gnjpP/4OpyJ7pjF6C9DWx3q+T/yiEoXCmytPlVVv
	 6FBAWYtWAJ2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C4DEC1438
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254189366.16256.17197583722776766116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3194d54f9c35575b4f77847fccbef07d5d2cb79d156c712bc7eeacb74b919f
Date: Tue, 03 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772541893
