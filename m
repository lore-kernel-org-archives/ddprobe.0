Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D31479868
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784667514; cv=none; b=nq7qwcQmJkHx2anKJpR+rjEW5y2JAyPkJRhUdDJyPEO3g1BL0Ku1+d+CChIQ7GYnAGuoKi4czgQ4pELM9NCduXr1KwKAznVXP5NTIClguMIrO7ohYgnYijcMhzBSDHUbaasKL9FqIkZm+fk2GX8xV3ZeUeTFg7rAZcJphiHlCd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784667514; c=relaxed/simple;
	bh=28b4B3Nzys2mYZgDZ3nzDHPh3dfvVRv2dIfWRz6NvZg=;
	h=To:Subject:From:Message-Id:Date; b=Bbiy/aYSG6kUhXh9kQqpmSbfT02UjDzNDp2r9RSsz4foyTyrkwVuU7W5tWr2JeJj4CU9WhdpaCo7ONWEGL+IGqXuEahgsK8Rw8m0Wp/xvTQ/ZyHwfWe5G86FWi4jXk/AedBrqhWkp2LQypL2SnXPNH6tOBnDHuUBjsma22JMHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi+AK7d3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi+AK7d3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E7DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784667513;
	bh=28b4B3Nzys2mYZgDZ3nzDHPh3dfvVRv2dIfWRz6NvZg=;
	h=To:Subject:From:Date:From;
	b=Xi+AK7d3786wFMfRKAWzwkoVYls6LqP1gI3/zNPeQ1cvG4Yihsqe0C/Z39xevqBkx
	 EF0TMeiarxx1cIM5pAaLPZ9QSJIXFY585qpU21LYpdYHBfS8azHS4xioq2PQzD8BFj
	 sYM18rjviSvlOMCorumoSTAeI+0JlCT+f84nRmC+cNSxTDRR4MKkX3hRX1H7KzlIVI
	 kFx6JhNzaTkLNWWbFCO14YkJ8IB0cL1JKngXnnLZdJ0vGT+DmOWnqLmPEDO4cHcjIP
	 2dq2iA7lOvhszVEUJey94zax4ZmQ0Eipa9tzbY2LGgz8sdCBuZK+8XTgsZcf0jph9K
	 wPfXeRpEvK/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9778C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466751368.28977.493738448528648213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f441df15c75d2c7d683fee12c91de4970c4a19246ef0462fe89fa58bb742e2
Date: Tue, 21 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784667513
