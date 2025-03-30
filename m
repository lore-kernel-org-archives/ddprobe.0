Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED944A05
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743333594; cv=none; b=GF+ExntgvhUDISDmrxCxb9qz8csT6qbPsXPjw+pWkdelFNU6is0WvSne3EObTkdwQXz1G8wbSFiZSbOAYWhwYxyX4Yd7DV5TIyhRDRj+FQ2UZC8fY5CZ6cXgZ6l0zR5YC+EShfrWlwvxzdCOExzgq9RLwxnFSwraGJOy59+ZJuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743333594; c=relaxed/simple;
	bh=sCq6kVLgRtK+Rfg8r1cZARLpU7XORng9W/wg9J8chl4=;
	h=To:Subject:From:Message-Id:Date; b=LfIhIzHtXW6W1CIEwyiPwgjIGnhxshWr2bcsRnEmSHbyB9UmoFQndyb4dUTkYxVirm9M0EjXdB/YR7kooSZuuuj1lkaP/3SiWw6AzJumr/Bl62YxpiTKrVjcifBsQhuNwJmgKtmuhoFhcotokMQbhcuPY7W0OJXD6m/bvKOWJLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMOaYuhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMOaYuhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C488FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743333593;
	bh=sCq6kVLgRtK+Rfg8r1cZARLpU7XORng9W/wg9J8chl4=;
	h=To:Subject:From:Date:From;
	b=SMOaYuhj0agMo/jUg3aA5psoI07Zha9fU9uIbkNbC6JSHOCkZh/3h8Q0kEpRrLPYs
	 tH/dNozgNYmtTLOOn47nR0e7MHcufiV1JhBjZ/GNg92Fhg27bBrxE+b2Icw7/iTdRb
	 lE3kIa+1s/KBAMHvt6GtEyHphqCdUHEZDA9mDCJH7TnqtW/OhwpjBybWGJkKCcQTAn
	 6LC+3NgZNGKgG1pk9cvNPUHDGJD3YoGZ3uZul+CRrUXh9np/KniYHoZbwfVBakKUQi
	 6gwC7wn18gvxqb45uVW/UjfNVSqqmu8Y7W+FY7HVzeYYGQZpaWepJ2ymOiZiQzx58I
	 vEduxY6HEo0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB95C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333359369.13754.10490318586171138497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e7450195cc44ca68365276122f5e2c949bc6d0910fb7f66b50fe167b81f849
Date: Sun, 30 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743333593
