Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6E72E338E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742602794; cv=none; b=gHg+cgyfr8OziCy5CgEPeaHtbWtixw+9A57OFu/k6eksGYDdIhfE1gb+JfZ/+YyjN5V7XLHB2R844Q4Tfq2YC2usZkEWbZXwXZ9g+Kp0YweD/1qXRvZURHzofOWc6uDsVvszOYJddkwmw3e+nk0vhKQ6ii39oDScyeoYukXEdlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742602794; c=relaxed/simple;
	bh=w8lgjU5R4AYNwpVPAj39QJjeX4+XRQRJWqyG/QzWTk8=;
	h=To:Subject:From:Message-Id:Date; b=qvBfYWoz5nMd/qLFFKYpo36zHN2Mpa5U05N0eMCi24zddZyXPi1k05V5NfJf07sl+k31ORVaRMY3RxaJbH7VC0sGahk26xuc9aTGayT9jp85Qg665hXxy5lU26LpY8IbHJ7nY2UxfKmT4G2Q6mwGbkiMkCIWYLWyOmAgkZNZbDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzz4gVkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzz4gVkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778BC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742602793;
	bh=w8lgjU5R4AYNwpVPAj39QJjeX4+XRQRJWqyG/QzWTk8=;
	h=To:Subject:From:Date:From;
	b=Hzz4gVkNY/p0zNDKZl1PDAI5ey4N8hmxs+JmK1FxeIW9kuruijB+XLA7+rtf9160m
	 qf1i5E0l3pyDBZ6+iusYqLtxqZdgj/5FrhO6SZnCGA6vxUbtSJfj8QO0zzi/y6zXZz
	 QTh6ecrNasyDpADnA9spEv2jjHD/zy7R9MDdTPhgXu6GeHJSG/9KBiZ5zF9SccYgbH
	 K/BXqsQikhY+p6hTpqX0N3jKyYZfow8oK+YwD4ZDLj3pmeWer7j05rIdHv8VINNtO2
	 8uEYTVbHsR0UAe+XW+RofNKpOpJjaX/t3PRiIJGOTy4SleHkSK2jWaHzvE8lSs3D0Q
	 MDmwEbKkyTC/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93456C36002
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260279359.482.11620346094166199378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d129dd0db813fb131eb3a2a42671d45080581718439a7a34b9d8dec8458b93
Date: Sat, 22 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742602793
