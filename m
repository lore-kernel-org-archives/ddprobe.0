Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E35F1D63E8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744174795; cv=none; b=m+lpRLPnG0IO1S+CHpvB1AXDXQ7PGA2ymw6FOVZcvMHLUGc5d+UVaod5IbY9jHFduJIS3U9eI2I1Fp1buKJYjTmuw85iV5QgcOFvjh5oP3jYhN6QWzLeVdl4GkwmQcv70MNhd1QFqOPW4TUZtW80lF2TwwGBUvS+ED7fxmHQujI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744174795; c=relaxed/simple;
	bh=qEqtrbkUXcYVu5qXZVhUoiI246ajVtIZ6/7mzqr2pHE=;
	h=To:Subject:From:Message-Id:Date; b=GYnm+wgvfR/mThZXGjcES+5uX86ctA6l/q3bvW1npTu+wAoo8QZYc1dUWpPLuc2VOrfNhvd9QJCTr65T9ha63Z/9Qq9Ft0nhdmn+sYgYvc/qwR3ym59vNHvx1tE+oVj2fBpBm2HwzRHM2EkTU4NLI5dtvu5Mg+n8VAZ+CKK6+Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umyhI9+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umyhI9+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD41C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744174793;
	bh=qEqtrbkUXcYVu5qXZVhUoiI246ajVtIZ6/7mzqr2pHE=;
	h=To:Subject:From:Date:From;
	b=umyhI9+mrwN9ofH1o7K5pPlZMUIgInbX4tCn5FrKM+MfpdbE1RvWfCJJFlMDEKMuE
	 innXVtAYQHDvt4eQnR3afIeVoEEqCOCjPqzXwT6Mr6841vJK44YhY54o6AGw6zbYJh
	 GAdEf7B4nbi86ZybY/rt51ORFl3SXqgSz0ImsM2TXQlc4+0a8n91ZbH7QsM6vCICBO
	 iWqH9Yz5+qkG1gNcx+uXCiqtuL4rz59yaM6eQNXkSgzemxbTq8h7EbsuB1lJs0tsU0
	 WdicCArhWbbmw+/K/Tf27fDruibOmcHiZhjBXEOskJ105/CxNC6uq9StfkODZmGSxg
	 h8leU3JRdBUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16C6C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417479362.19835.11307754012884280583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66a30a3e2d8e4d0fed40ddf83bd162277593635a5fc1286da211dd0ef783f8
Date: Wed, 09 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744174793
