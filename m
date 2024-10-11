Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F95365C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728605754; cv=none; b=DNETUhd4OqZ0bFDlOTTFDtPn/XsIZrjGRpRT11q2/oZYToliwttpZZika6XYEUzoDHUElKBJWs1OQIXt5eNKr5vmZoUh1SmmZZxbxn+sAkKYpiq0zvOvfSuPLpiHHQvKxS+JuE4/DJEgtZO3eerJVutX+9P7l+/hzhpWWgLEjYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728605754; c=relaxed/simple;
	bh=TFq8AUj6pgHjWGwFVjZF3Z36kvC85vvo8LCFYWv+Q8Y=;
	h=To:Subject:From:Message-Id:Date; b=pRl7RMcS1O8Bh4roN6TbQhj40ZM5LDIgtzBXwdNZ3JnGbFWSp/8CZhG03KPvFmAEr1pbD7e6VJfFcLqBp+XqPIOq5wuSE/0AFYtl5EP6PkZwVAWAdiQ3VYUl4uwLdoTo1KDUXqj/nL5qCUM9yPvkGK4dUUEh44OFidKixam3F+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI0q0cxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI0q0cxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F6C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728605753;
	bh=TFq8AUj6pgHjWGwFVjZF3Z36kvC85vvo8LCFYWv+Q8Y=;
	h=To:Subject:From:Date:From;
	b=uI0q0cxwQA1jTlM9p3lvXDhQWsHCl1AfPv8yBC+rfu1xYhM22aktoRq6ibr4HCegt
	 i3NUh6c5bkjd5JSxRHQ4YD7G0oBjX17RhOuDzU7hp6qFvb6E3frS7XOn1S/u48g8ol
	 zLE9NkYJzvWG/u61aC9LCNmDVvT4xDvHnSrEmvK7ASWWtJIBpwmObzy2Wmwx840uf0
	 XcnO31BuHRvgwTs2d3kf1P3pK8dMJhtgxaJmvl8wfwAGXJiM/fQ/BZRv4kdKuQaQj9
	 PuL21SG6NJ708S0j6iLRw6YZv1k6v+tCnlPnAkutDv99lh8HuOhfpmMTPx8PIBtIxQ
	 +6lU/fYi1EIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D127D24463
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860575363.2100.9824457765915781856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eda85aea4959bff632ed211b9526db78f5aa798a11692e88804f74b25973d36
Date: Fri, 11 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728605753
