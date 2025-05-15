Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A019067C
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747318794; cv=none; b=IxhhFDlzaZGs4Li4kAF9uNQ1pLddpnUbGsjeZmb57xXJV5pnaKfA9Sr+83HdD7dwDhZIHy8YVC/+4Fid4MJFNRVUDqMVvxi4zC/wFRjIDKJ2TKH9IvOsdlHNoUjlYiui2ifUO2pNv37yYDaysCTc6B3/vtgMpay1J5ke/MwZN5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747318794; c=relaxed/simple;
	bh=C9LGOkTNKdHJn4wox8j7Yfs5uk+iubyDSz54BuI2Bvk=;
	h=To:Subject:From:Message-Id:Date; b=tqTVVd0KSdi3PSnjLHnRY2chZn8Tjd2M7uSNrB7GbGx+RtByjfRPZQ14ax5jXsnF20FuD3EZ1XS4lgGKx/youKcKZYC5ml+YqBNHiDUuyptzTSPy4VgyugbbZfMpj9CV+PiM5vSg7Qx81s7Fv+CwTd8xBzmMpN1Zsl4MvjlBF0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkHgGUbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkHgGUbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2913C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747318793;
	bh=C9LGOkTNKdHJn4wox8j7Yfs5uk+iubyDSz54BuI2Bvk=;
	h=To:Subject:From:Date:From;
	b=SkHgGUbPiWrO6bmvaprsvLUaMgdVEKSTRh3eBHOOd8ynkjovdqL00l/zOAZDYt8gk
	 j/OEyNviQbtvZ5oOkCZPUAxqT009160nf0LVWx5ueh4YaCa65FN5UOs0WR2l+0QMo+
	 zlux5vEYoJEKHwl9I1CCghN5sRGi0217Um+8xQlIr4DSjKuNgCCfzUj2D4f0C1hlrb
	 /dkeeIZZZoHEFleWAdYsQxkpR7FmEeNnjJIvgiMnRaIprNO2IPaXfmlAsCRDk8lOQR
	 dC6W7BSdN5h9/Q4EC9/hXUrUTd/2tp6T5FIwxm9WjcWsGHHBcrzQjDg2uZddOuJdgN
	 XT6Tc8vEu+uEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C77C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731879358.20367.105321714133112901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9d933c422c3c20839f8263373cb32f286be1640311bb78cd8a6c38a34f8ebf
Date: Thu, 15 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747318793
