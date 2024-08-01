Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC36158A2C
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722513354; cv=none; b=Pj0NB9/4RePH/69dVLVamZixgyu/LyKj6QXh8VLhESUAaKxZuOxCnA2qqD0qaPRNtMnflaTjS+P6AUQ8H8pKspjoMW5s1ab5aYQlYWOGqZnSAvW/6valOD/xCCnckuWOtF0hG2Sb5d32kFe5FWJEjZCyrwW3jQBBo4+43Cvurfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722513354; c=relaxed/simple;
	bh=3JYX3nfVYBX4n0s7+avmwgFpawlzo+z3e3uRLz6KAKM=;
	h=To:Subject:From:Message-Id:Date; b=mdf+Z1fR/TXL8PrF0APiTLWFM4ANjh+7h1kjL1Xbu9+Bv9/+PYxGydRZP0QN7PoUYoVUNB4403DW5vrBdAnyjzXKvFf+ZAXdPSSXyp9Tnx9vQnMH1FkLmvpRgTv49hTUNPTmeZ8/R6N0RuCafc8Mq1lSrNfVS4dm1SG2UG+CTFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puNHJaBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puNHJaBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1873C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722513353;
	bh=3JYX3nfVYBX4n0s7+avmwgFpawlzo+z3e3uRLz6KAKM=;
	h=To:Subject:From:Date:From;
	b=puNHJaBlqThBBhFvCtLUC1Romz5WadQXYxMMaD7HXbcjrFY9QvDxbmCIBy9VLVaev
	 Zv8xy7CLQdGxgK+LkL99iw/KZK55L9Untfk6+GPjZ8n4n5b90u5OsJQcWL2sE7arHt
	 P2KklxV2e/5JSSzv9lUPN0A3DCL65Z2YaF9l1UNXfFRN7Zad3zL83vCF0ymVkKib0Y
	 xwMw2TUGprj3UTsYDXu5wqtaVfXnsnnvc/3+VQycxO4wOF3fMvXU3jEvlAaC2lHHYy
	 aFYW9yFOvoyFdnli20INNs08WM6aG//vFWkq+/J6cjsR3Tu1RUUW6k4MkM+OcwsKY1
	 GcRDOzU33RFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A035DC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251335364.16593.3586439232081880219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36581f42edc94a00f05d4db324cf1c21ee59670be70a062b166216078f176ec0
Date: Thu, 01 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722513353
