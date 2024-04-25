Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6110218E02
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714016483; cv=none; b=mU1DtjlXHeQRvI+q8q2i/PxabdCQO4el2866k7CNDfURhOSbgH3J9lWbxMJt9iTGXB6LKWlEa/BCDCmXv2oBOiuZVfqxZvoQzhSWVUNyNwM3EkEOXBGGSyVmGNDpg//XB0Rgvz8xoM6VnfrL/Q/JgR15zK5AINn7OP+mPBwsnFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714016483; c=relaxed/simple;
	bh=kGVPd4TeIP50glOv5c0K7lTNT/27GCOi//025xD0kF4=;
	h=To:Subject:From:Message-Id:Date; b=nS3jic+Om/swIHTdVaAqAByBX/AnKDyeGu38m2K3JPkiwDID5SYUFgMYd+BKAKJ/NgV3LE71wDHVn9Z+MbyYGuInC4ak/taIXWtvbOynGVuOTD0ziM6zhq4Mi83RxZD1m08ybeTHr5UArEX9UgsNj2s12gXxc/EroaP1+VRQLVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hq+wTxUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hq+wTxUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94E3C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714016482;
	bh=kGVPd4TeIP50glOv5c0K7lTNT/27GCOi//025xD0kF4=;
	h=To:Subject:From:Date:From;
	b=Hq+wTxUwVenluu9hLu4jfLNJvlj7+4x00Xd/+/dP/GAzXowmzFdcb3oM7joscTR0E
	 XWaDW/KbhkYW2+lUm5xrc0NvDwYXTxe97n8swj3bLI6N/NoL+yXCQllUEYZZ9uORs2
	 A5n58fzjh6VFQwy1fU63DrxlVYzPY1uQVjXYPZl4s4/5kd+dKzOGR4M67V3gi8VCeM
	 EBn9w7ewd1zz5rCPPEjwSXjxKQwLgI5QYEHgOR7cIYV1U83kkrMCDhb9aGtMDdwwLc
	 zD5FgPgSgdg5CKkDygDQvVyrGk+3fCxk/LCud/aOk14uhuzf+m84GUck5j7YOa9z9N
	 1YyEZy+xM0Eag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6693C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 03:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401648280.17098.9513072955933009311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f914b7454baed9870cb9d1f3e2d8dab1d29730e9259960a4c54378ba6a99f0
Date: Thu, 25 Apr 2024 03:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714016482
