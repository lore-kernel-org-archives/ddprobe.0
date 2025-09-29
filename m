Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E10E221F39
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759172394; cv=none; b=QUEPX1ooQHxHk0SL8CcNYLFYuKshIfFy5/fSX9jrT74GHmHO1B5csW49fTcioyrTxNL6Z2TAEYEp3xVWDNIRAPVb6Aa/luY8aefWBnZeSVB9DrmkZ6x2jyaC1+xZ2Zoc+bmG8ULykCnYkOCe8xKE6q3vZWDDx7DTw+a+uv/ixVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759172394; c=relaxed/simple;
	bh=dQMLDY09b+MZBm41t/CToud+8MOdjnwban69Qd3yyeY=;
	h=To:Subject:From:Message-Id:Date; b=bNKaPIoyxBc+YLphY2rScUhNlVC+Df8HtZvsdD6yfe8nrgIfyaMSFLwphz23bEp0ASsNIlDMVM6O/Km6z9ckQMH/5QrcVfROb3eXBgS4uOcZPctqpo6MUqbvZBadSiQrdTfYXhs8P/ajrjkDutfv0v96CcNKUzXTnN+Nz5KMpc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utl64Q0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utl64Q0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759172393;
	bh=dQMLDY09b+MZBm41t/CToud+8MOdjnwban69Qd3yyeY=;
	h=To:Subject:From:Date:From;
	b=utl64Q0vxezqOBTBxzKpYd9bt4TL5OiFdz+O54g7D0mUDGrRNNh7CQYyh5vKxDvmB
	 LV+6IDz6rgt9vYI0S38jSNf+DJK2a8RFxpFrtpV6LXKR6PBSDLuCysirh1/VZyFgmD
	 Qrvf+miZ64kGUSSRJjyJLU0pWAdW+VVEj97uL+cG1lscP23nXsV/j82bf4AgLNhcTH
	 K1+8UO9mhA1Ps2Eiyd6piQKIZNz/+/Fus+rZkfDLg8ejLb8+lY4JHaqDxJvpVXCzij
	 gtVnH3BaotMcLfvhSihuaO9Sp7i3ua3CmMjJ7UJiVUQfAzXffBB5yplFf8QtChWvFN
	 APlG/L5rRKHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92678CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917239358.3226.10045005790545883299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549a354e3e083968ca7066bae92e7dc2f3729f431a39fe2844d60941425713ff
Date: Mon, 29 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759172393
