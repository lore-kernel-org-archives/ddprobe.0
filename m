Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF3229B23
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750373994; cv=none; b=g5dg8WvLvsrVtR5TsjrHSIkFfkEIB+1/CWx5eLfKP/2fY0msnp4C8TlKAJ+VLlwDZdQMAuHa0dpF1TM4NSQ43pS/5JSHf3tWHbDr0b/LEHh+A9qzmuQ5494HERTQ/mgVPl2OUZ8zx7W1HlZYGhN2DnPef+ZRdJl0axqKm5zeg+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750373994; c=relaxed/simple;
	bh=AxYAfZGsJZNpSqn1MDDH40kOnY/iTAFVrSqzDFyPXj0=;
	h=To:Subject:From:Message-Id:Date; b=pkB93TI1DYHyYl3oxhgFGtZrCjJvx21HrBggo/IMUlkpMxcu0VnwSXoYWP3XyCqd07f5Aig0DGZzcuYmjzO6nhkPU3kqZxzO3jQi8uYGuRfMhmsQvEvx1Q80ly4jahEsp9t+MXTMsFKpSHr+WlYPjtLNRrukdtYNkLqXxRs+SiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1FqmCZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1FqmCZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2634C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750373993;
	bh=AxYAfZGsJZNpSqn1MDDH40kOnY/iTAFVrSqzDFyPXj0=;
	h=To:Subject:From:Date:From;
	b=p1FqmCZ4HYLpVmqFV469pg5poloxvN6aT6WA86uc1lsnBw7RMyEsTan3M9/lAMZfu
	 MGEnlG9XcD9D/g4RdllNR9U9Rd+oGOrcBgc4V9gIY55kz+Qt5onPsEIG2eiycLLMLE
	 W7O1RkDFLlQ1cq+qSkmFkhfVc/tIo6OCQGwEi7atA1HyOsyc2Lz698QepblzBsseY8
	 ch+5RJqkprUjkhOsBC2iyFdx7Pt7BOhssrLQyqhLwSJ3z/iMuNXUlYi1TU0q6i9xaW
	 xB4MxD7fZF5xP26fOxKtTZ/Qsq9veiHvV97q+wc/KVrZ8xYqmqXB3Hp2Rh6Mq0XNPP
	 ooGuXxQpk3Euw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918CCC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037399357.21551.13082028536631194318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623ebeaf833ef381496c22c27d9d940311a3c554a33a7ce460045fd75676aefc
Date: Thu, 19 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750373993
