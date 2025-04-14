Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390EF23D2BB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744643994; cv=none; b=W9Z2VTg/Y9CMaYNkv5Jkh2YvELsy0cY05aw+Ow2BncW5wqDrTPSSyNDZ+MOG9cxkqceBVUnfcKo9uVBTu+OtJkP5kQvIXRd/0c5D/3Eqnx8b2a1EBPzlCtVUYlFIwytdk+vh12Kx3iP14WmLO51cdGpLcvpBjYgmO9ue3a/prf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744643994; c=relaxed/simple;
	bh=i54dGHEoeBM/b5YOutZTgVm/LVUw6Wc/bStMkIhx+VU=;
	h=To:Subject:From:Message-Id:Date; b=Vo/po6XJz5RBW+4KJ+PkBvvuAcI8+b9PNahTrS64aZAvRLGr4qKo7roa8L46Jma7b+Wd7Q83xiUCR7b0ZtWG/EsztscCyiM5cxJctu8AaSVcOwEkz8cfqmaz29/BQyrG1C/HM2MSl74/Rxz3ULrKMR4t7f0OgYFzB4QMqpT4AWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgRSerm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgRSerm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8C9C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744643993;
	bh=i54dGHEoeBM/b5YOutZTgVm/LVUw6Wc/bStMkIhx+VU=;
	h=To:Subject:From:Date:From;
	b=jgRSerm6q9FR6ciz3CtQilOuzebY5+SUVsD/cI8+Yc4fni4Qe3vmoC8o6EBnhIXVl
	 kpnbGTfpPJkI9c+xrDSTfgO+/uwORrgW1M3tlsLGUWznLFEq757Amhu0qBuP8U6x12
	 rwpY6hErfYPPfEl4vwTAOXZTDMcki8tQb6lRa9QDE19TvEZs+uK4/uMQMY/0GHH0TY
	 TDnxm9p+uXWx9cHr//IrLhZZc/2NX1NzwWGSFEzHPKTEIIdEypWTLsfSv/sf1SruEG
	 Mjx45H5FxkbxqLUIjmnCqWaNx2Z/LcT3rfKCasnPR7jfSuevm3c6YmIWXfqklva0Sz
	 /MkFBMUFPDJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95189C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464399359.19716.17849075535462568287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e126471cdd87f323f5d844da99489ab0155335d46982129d29f884504b3f56
Date: Mon, 14 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744643993
