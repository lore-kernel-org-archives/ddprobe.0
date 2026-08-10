Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C71649620
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786347634; cv=none; b=S+joKzIfgZr6JqyPQQleqa3S2urJdkh5r5u/zk3WBPLiGXSlAWR/8CzouaQaCyNEXHtlDBCpVmxpmtzt5UCEfrHJE5ddqpiDfmsvGk2n66FZa5OhxigU95l2zRPssqsyVXraRu66RXBsPaxbXYK/AI9OTakJD9ukfmEOCIqTJkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786347634; c=relaxed/simple;
	bh=5M7lN+YbO+TY2A5BEQPVszmwP5HOJlaEeRgfPKWC7ZA=;
	h=To:Subject:From:Message-Id:Date; b=MT7xSMtHEY/uusWShdcwPcs0RAskhsCJfGaI0qVA9eb1iSXkpLEohbJVyPVQ6MKIYWc+ljDV/mXj6LIQnoHJLCmYeopT9LEgnA2oUTwlK3gZ9Wa7hES2uVMrhh5ysGG1UV62v5vG6/QYPR4UXoRzZ6JSkZpIDdHj6/5oeUqyWbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj2GGRBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj2GGRBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D0C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786347633;
	bh=5M7lN+YbO+TY2A5BEQPVszmwP5HOJlaEeRgfPKWC7ZA=;
	h=To:Subject:From:Date:From;
	b=oj2GGRBdQzXyVuWm0qlOAU2cZiGKdpLn/6+bjrmxjRmOvyDmn8WjB7g3nfKJ9eLkl
	 K5Jv8m91yi1TkV4k7uxWmRDMB+ZfK3uHAZv51NzQuQzqxu8LAaOPGo8Qzu7FyNpqhl
	 qrqkSGJoyuT8Ak7BQyBNfngoRhIZRegc/N4PHURGD/HIR35T72nEM5PS0auqHjM9M9
	 dNKQCmS2f2iGwMSZZZ4EAd90nayrv9v1hAvhW0EWXSwi+j9x2KJx1sgOrWXDm4gRCy
	 TPFuY4pMtJFkzfg9thDr7pE2ZlC2GgsLTCQE7XDBx+oR/R9GMZlIslI4y5fDhfQjQg
	 8wmvV2hvDhOgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD52C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634763370.9019.10458042141201719357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b86738cac91ca3267292cdc127a219b07a8b29f50e1d8b647c068ed8250433
Date: Mon, 10 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786347633
