Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555DE1A9F83
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787530834; cv=none; b=qnxcG1m2R+eilih42ETtvgP6yXr1iBAa6XY5DbyveGFmrnNZ6f+E32//KVtbBZ1qTnLkLSXo0vVnaqZJzIlwz/jqRJw3LBs2bjCDWKmDYoSktAnrH8pzlhfZ4d1pc6aojbKWBbKHl4Cu5tKkL/EBTg76AHZm58mIFCIQjBEUdAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787530834; c=relaxed/simple;
	bh=uF27MbuGk7GXRcO6qEZhxottGLhCn4e9R1jrgCIEb/M=;
	h=To:Subject:From:Message-Id:Date; b=jkNgGf4jjOSUyzBJ3oTe6dFsCLBkUUpTE7EsRW1PSCgZNiJJdsXoch/rl9rK8dfIiUQ4+ycANgFkpUxVEJlpfVtdwLJIxGvgOKQflDunQtIDBFRI+1Lt4r8XWSQC/sEt28HH/N7P7sMNB79jibw4Qe8J2t5z5VqddlDu+AY3rfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyZtqA7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyZtqA7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8F5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787530833;
	bh=uF27MbuGk7GXRcO6qEZhxottGLhCn4e9R1jrgCIEb/M=;
	h=To:Subject:From:Date:From;
	b=QyZtqA7yC8PPE/vGKNuQNnlGxfa7QSnIyX6yHa9RqUCHLfmoXyATlyncWEiVWbHEu
	 6rQdkP4ijAdrvq2+vdjZwZdbD3UDuMSt1NDJ4yMOQ0rib68OemR7XzN9Dt5De2MhgQ
	 oZp81CgPMT7vBbhg1gv/9Q1U5DSRkeH55YD/kOrvpTYhZbF6Nu69a4ECIFmkTX01f9
	 4NVHXtgt6cnVbT1wWVxfVn4tT2SAPknEiWadKoK6aV98Jkm8Ps0GpENJ+2vZOahpxG
	 oRPv7BFcQ+dQrKr11f9Pw4F5uXn4gO+bFeA3Ldgakg6q+/D/SSL3r/WKdOUyDlB5Rd
	 IF0WgPOgDr50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE859C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753083369.500.18259548286477541255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0e527464e449703a61fa02a16e13c983452e84bc0bef750652c8793908277e
Date: Mon, 24 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787530833
