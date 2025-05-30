Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E90D219A6B
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748600394; cv=none; b=gGEO4jTFWqT34FnqXTg6EI3qhw9cfhm00SH24C8xYBQwSQmetXoZFkI3/L/NGnXGvVpdinZMDPEUqTvMMcFsVyt+KO1ZHNl3VpS7BU6SclOWKvKZCDljOav+LcrCnFO2KeTJ1CCBK/Tp3WvhkyIQF/hKZZ8WrDXPZnNf/Ax5Hd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748600394; c=relaxed/simple;
	bh=db84OQT0Kw4Vy2Q9kTpzD6PqpStBlm7468M54bCW+1U=;
	h=To:Subject:From:Message-Id:Date; b=Ci5j/zPrjyMT7bBDvFZSwlgKrdtPA9Al4zPDpujCDPRlwLilrLu/H06N6zgg2lJ4HI5Dcl6r8vC3B6CfV94V460qSBNrhZd9fj5/0pbKy39c3GAjtY49znMPn8QC+HWoZlqNkK4EA+ILc7k0/gpKdJ1GdUC88I/mAYp+rOR07dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXdtmq49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXdtmq49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECAC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748600393;
	bh=db84OQT0Kw4Vy2Q9kTpzD6PqpStBlm7468M54bCW+1U=;
	h=To:Subject:From:Date:From;
	b=uXdtmq49K7G3W65RnQbfAw3Abot0U26olAlBjX4qrKekBd9RKUgkxu3NSRnAIoWsI
	 6bcpcwLDadl1/DLgrwHPpXCcBtR9V3agku+X2WO6ja8SDjuR+G+JPJKagogz2fm+E0
	 kL26yQX3MyOp1glo7qw1bHQZBF+rPIUd5LZ5Jsl0R6a611KjTI3X6tvS2s0LaBdSZw
	 VQ4hr/kfMBd/vAfAY0SfitCDtD/hXlDJ+5Md/rciwye0xYY/+NyyZDEZ3ahCqUNpiE
	 lVQIe397n5DdwXZ/veHUokscyC850zcdC5VfMGKPdCWk06Rk9OjARVGPpAzUdnex5J
	 6Xc0LOYcJi+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906CFC5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860039358.1348.200881609359880839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a0477dd961f442b9e44848cebd2e99cc723dc58924973edb865b7ff720fd3c
Date: Fri, 30 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748600393
