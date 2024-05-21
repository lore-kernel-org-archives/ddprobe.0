Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA455C29
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284543; cv=none; b=Qi54l06EnbMOWWb5bzFCw0dJkXwGvJ0Kum5/Dh3DpmsRPyimfNj2kHQwZE105CaXpQfatmN0IZQ2AEjVLWimEzBpteY9zdyVxX9fOL0vPC+6WfLxUsJVL3fay2hN9Wj7e//7w1p/bJhkBMsEhfPdKeGl8GwI0YAlvsVhSLwrcI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284543; c=relaxed/simple;
	bh=QASnGRDefArFyF6HK51i9WVfaja5cks5fTrPB/Xx4yM=;
	h=To:Subject:From:Message-Id:Date; b=eJdd9G0lvFscxoaet+P/xXReYokYZ28/SHtg6H8DwrUmHBoZ/EHsQ434rA4okpa44Zx6G6ArtYhLqf7sIRmSXMLtqpFJwUBYvmC5eQdQGK4ioLK88SN1R7YEhmxMEOZmx8m/4kL8EPUkiXiK5H4PwARTaGlH6ztm2J0q1PL9Ha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fN4hfR7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fN4hfR7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6540C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716284542;
	bh=QASnGRDefArFyF6HK51i9WVfaja5cks5fTrPB/Xx4yM=;
	h=To:Subject:From:Date:From;
	b=fN4hfR7NTcuh9U0u30VzexE8ts1tuu5SSzLbYNE+/hhnYw2Xq/NudtoYT4tMTcCRY
	 D3EwGx8NDrwu/G0jBhYKTVVDui1vPkgIp4mN/4KIsRyltOpnFfPvT3TMqWsTF4IlTy
	 7T3Mh6gj5ORrKjJf2aARdEon6wRZasfUogCCK2jqSRTOJBsKvDtecJAHrAo1kDR9Z0
	 GCPO52YgDAvZa+NRiFQn1FH1yfMfvuoZRjnDJNC8GeGUijS9JHkg+lNS62WVWy32V1
	 iJMRWxPjx5EhDN9wriC6IJ/MggbokPUlUzTJxq8ELwFFbsqmuHn28iGpcvZA02CYxk
	 Re3JGBumCi/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FFEC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171628454278.28427.8421306957573855265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cfd78ad6c1fd042744fda3f402fe55d8b499fb337caf852a68237b32b5f685
Date: Tue, 21 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716284542
