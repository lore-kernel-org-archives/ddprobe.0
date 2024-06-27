Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F30113AA2E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719479663; cv=none; b=Eny53L45yQK0SXA0NhSyaO2Qppnusr2ebb4Vq0Q1GEEye1KxATK5SRTW0BiOsBbi6rTZHVtjIKLZvNOGHS9LtoMnH3ODqdc8Sz9wgYyj9RXg2FPXxc+Igh5z6QJmYR+pEqspjgQXvAK3xFtreezZ1Vf7AnYWIrPp4CZvwjMUG8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719479663; c=relaxed/simple;
	bh=BmZzDg6CH9Ysc5CjU0qTIJ8oBdc6IZulrlewet8in4k=;
	h=To:Subject:From:Message-Id:Date; b=N1mpdNLaPqlqF8G/UzTd6LkfHPU+DvyCzmxTbeGDqcsDvDo8wtlIKQFOBVpboNFu+t8U5OB3Qt0U+Vyi6OUt78A5GjkAWhr7Z0lre0V7r4o0yUAMSQNT+Gf+b5K/5W3pEHxiq/Zj7iI1B+22g74gzHbPPdJ9LwnbSx1/ev61Q5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3v7wJ+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3v7wJ+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE42C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719479663;
	bh=BmZzDg6CH9Ysc5CjU0qTIJ8oBdc6IZulrlewet8in4k=;
	h=To:Subject:From:Date:From;
	b=t3v7wJ+WRbH00ZYc1zbx2gojrf6/HJKUpM74PfVcuDVysYXNWdHW8y+Ca3TxkBoYn
	 nD7UCd+2K1jiV4zasiH4FhU0gKfwqR6CYOnW8WzKj/gc1ERuSNRslB7Jcw5jVn5+Ty
	 DE2BAXyhSqKxVVfB9yo37/IGALWUb1XSyaxNq9TuZjCkS3JZIhhES41E7hg/ZYUTiG
	 F33kRiBUvW0X5A8vmdeptBdY4xvCE8aS6NGjl/nSGXfwBZFlkeK+fR+1YQ4/wB51e9
	 Q0fEGxVywiiaKGRMWozap1/vw+kmEv0LGwHDPFSmcbJ1dlAYN/UTD7v2SHMgkRLPY2
	 NKAkJdaHU9IXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69C0C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947966284.30498.10352688084115078628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edff1a967afde9728cb1e628d4b26350461cd4a158a2a54279c53e163bebc792
Date: Thu, 27 Jun 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719479662
