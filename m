Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FB315C0
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711689497; cv=none; b=AT3z7+9ZEv9O/kQxH4rhBtuUFxZGNbj6vvLV0u8CxkFtYP9TLPXbp3m7UFf8tXHEVttvWJU653dRGbLcJSHfmUPs/zljFXsqaio41Mz8LfNHuTMn6LYgxXDDp0VDapw4eyU2d0j0f94YJUrKnGBsc8HBzYt54U/iJIlwiAzaTPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711689497; c=relaxed/simple;
	bh=X8Uk+O/o7xGYYgExLHOXlvSgp5Ug5pzfktFs6y8109M=;
	h=To:Subject:From:Message-Id:Date; b=eBm5e6ITE4gAxSX1BTW3+4Fhx27As6Q00ATZi0hrgxlagBnzwRdZoSQqE8dofd3yk0V6eiDPdeOVC9sPer35T+P0kDrscJncc2tXCnyaXz/w0dECiH4WDjkU7QSQ5Dx2S8uTjI5UhoyiNF3eY31VKd8nIwQ1Cf+j7VB/DGkEDyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clJgInrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clJgInrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E390C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711689496;
	bh=X8Uk+O/o7xGYYgExLHOXlvSgp5Ug5pzfktFs6y8109M=;
	h=To:Subject:From:Date:From;
	b=clJgInrpIQGzhTyWozm54mCsVPgRoUEf82KOwP/mOl8Qj1CgYAH9mRsIoYEwrjoQs
	 nlwfEbtZgr8q626x8zTlGp9bZ/d3JmG4Mg7S1RJrDk/6VXRlLCIqJoKC/QGjIt2t7K
	 4YHSmHqnHG8MnoktJmvpVH85wfx2B3cIozPDNPigQFL+MwZtjRPC22gwjaGqq0a7Zd
	 3w/wDP+xz9vB1N7FIEkUzZVNte9U29Qugt4G3X34r5643RKLsV/xkjsjLbA+ivDoSh
	 XSS6q8JI1kLRDPb8jI+amSILjz0wpQDP11v/ounqmXLZPyJr68BszNXDpZnNONuS1h
	 3mEGD/BBJy93g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 682E5CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171168949641.2677.17782494248117279766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9201f3b32247bfa559192570878be9eda008117f459748757655f87e8f6b302
Date: Fri, 29 Mar 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711689496
