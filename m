Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4101FF1C7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778958034; cv=none; b=Y4fjaF5lzOHP5R1byIQOL8AUyxYH/4qlEEhQoi+fkgLNZHzgV3NmaP3SukmLqO1hn8epDdxv2akqGmVDPqcpxk7LAobphJZeervSKAeQ9RM7kiIfCl0S2ovqRr3+1VgFIqh0Q6yB+G9x4LDIf7Tqbh4BuPtH5eo4kh568FMGC3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778958034; c=relaxed/simple;
	bh=whxXGw/OllFGDOOm8gLIIedVAP2o7tx08ZmKd1pmkJc=;
	h=To:Subject:From:Message-Id:Date; b=rQIA/ENAGjcgU2UF7Li5yXmKxgaIafJWhMhLbGhjbwO4O6x4xegVcA1JKG63MU71ozO1AYwlR+Fhogl3Mf/dzfPZu2cnW8bwC+Yt+jwBbuQQTRvAyzhUxP0oueATLr8Ady45PXx72WfgGb9ma0ZOWN8wgwtZwOc4zdF/LRLTHuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe+lpRcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe+lpRcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01F2C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778958033;
	bh=whxXGw/OllFGDOOm8gLIIedVAP2o7tx08ZmKd1pmkJc=;
	h=To:Subject:From:Date:From;
	b=fe+lpRcJZvyO2kFlDFU/eE6Dd22NyTmy4gSoGHL+97flIAV3EM/C2FVrR4ejFS0Xi
	 uQq+P7fH20VOUWQN6l0X9nCE/cjx9CMFS2kfrPJ3pt+d1FJs5LBvs+ro1Oj7JAhvn/
	 c3tUrJ2WbYxTD1/ViTN3OkLzFAUwzDEnGG19A78XU3ICO5VgQIWoStlikT1hJJjqtC
	 wFfKvQ6Q3yJDiWjmDIZxLOamhy6MPzRwfcszFnetVZ1xubtFWuhHG2Abx+Fuw4MMdt
	 f3Wadz0sLrbmGp9eihVNdPWn24X89QAuTeEHJCyb3tIs6adCn37BpLQO6FRTnogSEr
	 y6QWSqP5Jp1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01E1CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895803371.18706.17712747017718049255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c13739f41ac381d63038faf11f6c819fcf2010d7a7ae6b0d3c948764b7ebb1
Date: Sat, 16 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778958033
