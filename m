Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD9C22836C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769733834; cv=none; b=W6YzA0pOTexBtm087Oj/NLIRri2COXuh+vFdXW0E9HvVLPv/TYvwix0VfD3B6MYOWaZqGKag7WBBDt0dNFcFsmBzJ+JWbZYpssKu7o/2JtQDYaQY8y1SrihbliOlDCmfNdt/zDN3CihO915PrCTrmH1VbD7eLX0xEB4dWaByV2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769733834; c=relaxed/simple;
	bh=hG4PP48tGBAt4GkO4eSmWfNXE0MWgbC2t58YTm/plVA=;
	h=To:Subject:From:Message-Id:Date; b=QQXAL/Cmk33qXX6c6ziDA7q8APAhBO7jT/muU5ePNi4X4k3JxrZh3ACrvobFNb6UilHAB7uUnTi3CJm9KHwH6HydNGQecIok9EKPidCH7dIJeMhrS+w/fcbnyw+/Cz3p8p5/cQDQcKIJxEh87JKDgH6QYHZIR+iBqqJamDtHeaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrkQxMvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrkQxMvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3149C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769733833;
	bh=hG4PP48tGBAt4GkO4eSmWfNXE0MWgbC2t58YTm/plVA=;
	h=To:Subject:From:Date:From;
	b=OrkQxMvh7F1wAo/2t8oOrbOtGb9v1gDm5pH6SgsqgxNlt7gfeLXzj36ykmW7xJ2ZD
	 vxmfQR+h2MZnmrqFhjTDyTD8oG6f4Houo8yYHgSOeMpojyfxGV3hTAV1vhwLzyqMk6
	 1q8BXc0m65cZy94gJhF6YPyCZVMIXgSl/yNulwJO6NMVNqJIcZAgr6V7jqOD86FSmv
	 rBzWQQM266Ckl79j7Lr6homR/eQ/p5rOyPdzmpsKJLk3CtgoRoTGxOC2Nmb/V3dIvO
	 1Zq0KVDjVzq7HRMKZa56B6PG6rFv6elYwZqSONiS8RCA++YCN3MnE72TNQTTs+SAhb
	 6I2CFIYiJ6LiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F794D73EA9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973383357.24702.215983912118506522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbada190f1d7224434f70aa8787c21ab243615c580548886260d94ff17c0bd04
Date: Fri, 30 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769733833
