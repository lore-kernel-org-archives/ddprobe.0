Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4148815AF6
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714048883; cv=none; b=jJc5Jo8/uhik0BQK2F70swUVpgDQEPqLb4/ptQOvDwLCti43uCNX/H1nswft9oxkg5ASCvngaHSUS9mXXmjcpLNYDH7zKOQnvMTDMNeXF2B2us7bB3DVAIe513/Uw7u8xCDoPiCqvPgfGbtvZbnoHkPhSPXKNO4m9zlu0pMnCjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714048883; c=relaxed/simple;
	bh=FWEVpAhhv0rnJPcFuGdleshOmh3EDBW6q1XGR7empgI=;
	h=To:Subject:From:Message-Id:Date; b=Wwk3aRaYrX3rR3VO6gF2jo4Z3cehqfojbgOZi+vz42kWcp0/I0XdLCVy5b5UA6FMWyQsxCgKM7shB1djgXreKPbRS8+8ahVDLOMFdGyI2M/UnIBF/i6rWHXGOVo/yMEk6+QBFbE5QitFMZef5udaS1mDWzqIyYjTc+WQYh6PwIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7RVR6Iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7RVR6Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C61DC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714048883;
	bh=FWEVpAhhv0rnJPcFuGdleshOmh3EDBW6q1XGR7empgI=;
	h=To:Subject:From:Date:From;
	b=Q7RVR6Ivy2Aqn39EniJQYfyGnVEp8uIYKfW6G/15BT0Lgua4aiLi5dnlLH9oF6gwx
	 Wxgc7suxG0W56X5uvITXTooO6f3o4A+LSAMThK1krtSksAkJw3vBOF+X52GirXztZn
	 ahJBnyj5YCf6hoOLDXXDExgYweJKJ7Hd7C204wyO7rUFKOsbasyfOebjEcDVa7WcPY
	 pWEgJJJ62zGBYV4g2RArYnpL/1mxWxCj0SnaRurrTbxfpZr1YjiiOGnXa/DbwV15uP
	 MAgdcJ9zuVZxv2zdethMTUaBnAo8Ang9kaQy+VVLLVl3XdvN01mAscU0YUaODhT0Zk
	 MIflhe4+TXrjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5AD8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 12:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404888291.30569.5675815216361707963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c659a0b9d638d63c7b52f3d20e72c97839182a6bdbf2a20747080ced6c1d2604
Date: Thu, 25 Apr 2024 12:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714048882
