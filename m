Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AB41957EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719497063; cv=none; b=ocoK7L1+mIDu4g7lmzA/VymAUYrhRmTnosfLOO2taEKpy+BoUc58ACMITTTTOd7JR4fyg9leSzDRv6boYocTxI6DYMAxzMQmzIsPSehZGE1XqjOk75zYce0aeXQlxGVQZJdWmqKW/d/uSaxXdrWnXXezrzbAO4mE11fbq9kpXpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719497063; c=relaxed/simple;
	bh=FDdAHs6ZWzNyR0AK+42IR5Dso2c+P4ql3pLZfgQ6wyg=;
	h=To:Subject:From:Message-Id:Date; b=KQWtjKCXWAzYm0oIM9OGg2TXhmUk72P9hmyELjPIsj6AH2Gt7JlmimaIsXiq09jHRHj1GiEYDe0F7F6zsztl7iiQ72F0+SEdvszmPiKR9WVdBGA/u6Cy+I/gdJ0hluXmOXbNAOGEMCuKeKHE9f+y/VBsj6pUKwVAOPgknPJX6CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5Cg0j/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5Cg0j/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA20DC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719497062;
	bh=FDdAHs6ZWzNyR0AK+42IR5Dso2c+P4ql3pLZfgQ6wyg=;
	h=To:Subject:From:Date:From;
	b=h5Cg0j/3QV0WpGhve26RIKqOOZMpFBHOFe2HdUhyLT6V+Fk/55/h6/Lrqt+Zxdptc
	 f9ACYlYpPpzAfQr194cCIMtqlBJfXB14chqlHiK1Vm7C/QCA1xJ8Z0PaMlzGME6fiN
	 UFC15FOyy1DVAehGE1wOs2PquZzVU+XWb7fR77c3T2PI1H5NHT8PqzP3rDyzYlb/fh
	 AIBOGSWNqadB9PgfJEhUg4aCPJ3a8sPN83Hb+SlbIMSozjNcW/xKe2R+d0W/RacSc1
	 Db2o3Rt6l1ROhbXO61z3hu/+Iv/X0D1RuwJZBv8EqmizvHhijuaTbke3tNHbWXRSxb
	 kFhzUdNAgUzQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE400C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949706276.19263.4566960554697951109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4270aa618cdaa304984783c4375abd0eccb7300a2dbddfc2523824243996a1d
Date: Thu, 27 Jun 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719497062
