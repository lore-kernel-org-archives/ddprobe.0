Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0DB3C68C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705658297; cv=none; b=NCoj4wy0/opCFkFrtmNM25dAop5zke1zgVLs02VS4b5CAvP7Oqi5lUi4LZbQqONG5rpgYBqPFFkW10TaJyqMxxjVdbhd0yW7mWa1ZaTHIB6sPmN1XcEtg7Iw6ZXxcdjBfe3G5AMjUbjAmUzZvd0hWtE33aQyl99/Vfa9eHHSl5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705658297; c=relaxed/simple;
	bh=VowfMrKjwNkB+3d5ZKLGwqMihRPz4WDNtemhYBrgbhI=;
	h=To:Subject:From:Message-Id:Date; b=R8Q3Hb7/XHaf1ql3S9xe3ZBiyk2VkT3pXXjkL3AfNhRNGHdvY5rnOC4Mo64fr7qBhO1sZt+U2GFLdhs+uf5OFRYdkkvtrPURKp6yUeiQD2ehVL+1biXVel0ej3ZV0JiVQUYyZ8c87xyG0saYl58nzxo8nvesWK+TmLcD2y0FU98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfkdOeq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfkdOeq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B591C43390
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705658296;
	bh=VowfMrKjwNkB+3d5ZKLGwqMihRPz4WDNtemhYBrgbhI=;
	h=To:Subject:From:Date:From;
	b=BfkdOeq/C1iTWhQPKAxu9bwS0SxQi8C2yoes2E3tTNof6KKQiKyUmF1EdkEXPB3Z0
	 LDsr+E//XVU6C4rvj0g7eK7AJK/IOz+F9AAriE8gNASSLHADaKFeHXR/JpJul8t3fC
	 MnkurihoC+zh3aPGH7iEt4mUVdqD8tJK8r9mIzDObS9yd4Gv1NJ3h0pcVhfhwigY//
	 Qg0/UEY8uf6KTIKZHvtwaLy37SW2+lJ8kGIisheP0tEIfmCRpbTnoxTT4xN3S83uSh
	 s4e0yP/j1tV4LvFQ/pcx5h/nPmPUiNhLKSk8X4YVWj1E+K4/U5LtpMJxVe9GtH77bJ
	 gz2bazdUBj4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E72C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565829640.25689.4974541739445126487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad08fd983bf6453838451ff761390e8649cd9428a133e6cba38e05863c9f153
Date: Fri, 19 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705658296
