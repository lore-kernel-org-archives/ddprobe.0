Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E0039150E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779134434; cv=none; b=bE6g06soDuwzUvS/2+l5zGLqgey22tR7nhNPjuLkREo3JoBtE6ro0wCcubUZ3ivKFjyMjDI+AJe036dNd45qTnVWCM6i4ZP+Oa6w5SD5EDw+txH2kWeRR03y/z9JvlnnZdT86naI5Qw8p5aloEws/nwGTWcT/ebBFrITSi+Dhpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779134434; c=relaxed/simple;
	bh=+YgKa7a/LVe0qiAdc2tNIwh2cVdoYuEmwTgztESnwFU=;
	h=To:Subject:From:Message-Id:Date; b=WFQ81iOu6yEaxHSZWHLYckxJA0XH43PfKGirQslFkVX/C6VsvqJT/45E8bIu7CkT4f/AdP1uGXzs1NKwd2WmrR7hrmxCruWdJVtrk3664WXJwIHTQPoPeVAYvtkx78Ss5EpmSKShKSWzkaYRoFiXKVu7kUwtxsvUP2RB9I2a5Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwvFgLtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwvFgLtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CE8C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779134433;
	bh=+YgKa7a/LVe0qiAdc2tNIwh2cVdoYuEmwTgztESnwFU=;
	h=To:Subject:From:Date:From;
	b=SwvFgLtJ/j5jjePq+bwkejMDRK22Wd4RrRZ6lesg37DrFlWQ1Ia5vqEFUHrZ/dz/a
	 K5Zb2YkjekjQMaeDDI8pOvwS7trSHfA5Nz8ZWgYT7d/7/6rqj3jyU0TzxNr6h1DG6h
	 z8tBL4Gq3QBhGKZpStG65rWoHNbVCRYH4DOBLLAlVwGvR+5rdIGt3EeZyt4QRLtkbF
	 labGo9Gf3h+0f5RbSYg0bv2XR8gIlvCI2dclFCkl3kLX40HDjMT6Nbrgzpo0BebYg0
	 LNFI0OqelI3tZjzZS67QCjvYwhnnC/UahGsj2MuRibjj+GlzXImNk8/C7wb9wzKFtL
	 EgwqOLxHycb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE04CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913443368.3402.668471454704607595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c7ca2aa0436d42b1060df1498241a27de01ef6e44d40d2b0ca1999f3dfc75a
Date: Mon, 18 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779134433
