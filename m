Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C052C11D3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762925394; cv=none; b=ZdRhBzDqV0bgXyb8AW8WEl7vf35LZJFEj3ONVY/qoZPOFnOw5X1p3uqDtuUXmtqrZRmz1dQjVo8gsG609BCRF3npxORDaQkyzKKR8orvHk542iM/u8Y64b+SoWz2JqQI6hhTsMgBaU6+YfLn4NWRR1HvxdE2UkLOoGbaqxMDcvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762925394; c=relaxed/simple;
	bh=sbnAgqnJEkyGzA6YzbdyJdmNhiMCyh8lQZj06RzD3l0=;
	h=To:Subject:From:Message-Id:Date; b=OA6wadSFNGqdD3d51e8O/SNsNypofrWsHN3QlLmenCh3/9FdB8IY3VgRYq+0eskjfPfq33eYOPhZMnHGnWy2mjGMDj5VQwzakZQ6Iv2g0rot1DgO+JAXa9kpXisvsHdAxrHxoB62Q2lk5a88ljaGD8Oy0zLSLe6GAL9t8f2R+Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSYit/qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSYit/qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDB9C19425
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762925393;
	bh=sbnAgqnJEkyGzA6YzbdyJdmNhiMCyh8lQZj06RzD3l0=;
	h=To:Subject:From:Date:From;
	b=oSYit/qB6x6j6sESMR+LaHimq69Edce5knSLjjZJH8AYGJuTcEWyU/0M3qZUfSqKX
	 qlbwcVbDsk6uKVl9/CuU2+HYjVYrYbabqyPK7JjKkZmd49/5ExMowChwdYX54P57/8
	 6FYgU5msMEbWIso6RgiRwCpkEFU+LtC1oOxIe4u+mpj1xXQkc93oKhocG7naU4Tx/R
	 W3cIl7BW7mGZNE06sK34P+bivvYUuAYYzc15/aCEhYPStG6QYddmi4Krg3aEoCCO8G
	 SUO+4/ecoLAnA11pKqqLQ/gbcg6vd0lx7UEbvspR+Obgwq4rwYS+wpkq2/hhXAKO2K
	 a8C0BEyqFR+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292539357.11358.18304011480614730991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f106d1e5fbeec47cd2b6326b0efe50da088bdf34058614eaff8beb83af725dd
Date: Wed, 12 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762925393
