Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65027372
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717530383; cv=none; b=RmYkv41AdNsOr2XLfWrX2dKS334BMebN3175luwK0Zz5SZx47rEzLSHGkplJw1B3bkWhsjRZsabVjF3asii2VNXbDGfPLXQJseH7jrKscrI3ymU0FvkSJNezENLMQG7TgTvDQCetN4JcGWU2l6ZwFDLSFZKWhrixq3YzqWPouK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717530383; c=relaxed/simple;
	bh=q1NZns4lU+4+yfFF59V1drK9eU8bUomPoZ5HZ1ULsxM=;
	h=To:Subject:From:Message-Id:Date; b=WOEcL9o+VMgmgfWHNcwSOBavn4fHEPe01r8xYjDXeYNlNfy/9hFQJQDGEbIy/1Ky0SQ9zdh9ZteXfCQ4/zDcHDZXxP0zVjx9R0uS5aicq9zs49Uuvjw3pIhBTXGU598toJmqTLL01dj4E6jGKm/rPBzlPgYnAoj+6s9UHVkPh2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTyjpWdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTyjpWdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A4A9C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717530383;
	bh=q1NZns4lU+4+yfFF59V1drK9eU8bUomPoZ5HZ1ULsxM=;
	h=To:Subject:From:Date:From;
	b=rTyjpWdysypis0BF1frDEzI1gLFhWCjTLV1y/dsXi6wtBADXuYlqWQraB8SKBLZFE
	 Yj+QGWDOfGMsz2ZSiXPm2/lmK1Sg/8matbTWMTh+PdPhAY2zAZ3kvfoqHYv55MCb7y
	 cgkZLsRVNSNFk8SUzVDAVPfKkJs+bbzXoqARzA4cQLegekCQ8Pky32vy6NfPrmq9kq
	 AXlHNMbAJsDO2mSH87eQV/zRwJTaZ8AkF8AOTpwNVIHv1dHxCNzqXLbFmWIU+9IZBz
	 +FQXwAyHw8loHiKOirdW3acUSTQsXvHBTrOeoXmn9xvCtJr/Vi43kM+f1sR/3L3jPt
	 j/UMZa24Kj6rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE36AC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753038288.18058.18044383941326465035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca438491c5366668ea778942e7ded98988fb0706b945a49a040150eab9215e2
Date: Tue, 04 Jun 2024 19:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717530382
