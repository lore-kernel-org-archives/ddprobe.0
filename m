Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280EE8635D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769215434; cv=none; b=t5+8OUNruq1uHH1uu55L5ztiN7UPxI5ffv80dYZ0Zxad3kNVfCYWfgiGTT71PWG1u1UeWbggmisN2gA0Wbl01cCqEUJEzw8ojuT05tuskGFcaaOk1Q7/MjIds7lF1m74ZIfj6XT6hTgtBPfU/ekO0Evpbtx7DtwB9vgzJfWFZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769215434; c=relaxed/simple;
	bh=lUaxf+rrwJSK8Bn3bRKtM+sZaSr/y2mV9ZzB/9G9hmE=;
	h=To:Subject:From:Message-Id:Date; b=CrWo4/+S2BR7qaZala1J5qwX1HWxoN39lhkO5Rj24dhaqlsVbwD2LDXsQyNZIBb983OeR8v7piafFyGfoW1WoO4OJPRtUpjncm4qd+jPn1GyQD3zM7Zy3zT/rpqMzNowOT3kgqZuplBy16rpURDlO0dsCtB1FF/Xuysq4a7sZHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7Q+FVKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7Q+FVKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8B5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769215433;
	bh=lUaxf+rrwJSK8Bn3bRKtM+sZaSr/y2mV9ZzB/9G9hmE=;
	h=To:Subject:From:Date:From;
	b=F7Q+FVKlR5zF/OQgKHdkJL2g75p6F9vBzFP/FP+KyhYIA34NJTch8ZfkfKAIEFu/2
	 GH6iKk73InBpy7hlWYsDahG2buU39jVsjuCUjm+Jxi3iTHtWJqm9HviuyWft+px/OZ
	 d6mKeRi+AtMaaus/jhq6frAH5d8/N7A0nRkJ7zSsJwKNpjs3Jw2Sh5z5j4BEIfj/38
	 fXqrmmcTKG7JTtzL69stYIBNkqZFuJKpGPGpYdEYMKsb0cfYFZ7zGDrQKqRLXP3x2u
	 ox1MRyt8Z5wTBNlXCno3EEkSuohXxDs5TARkv2Bt/Xlahm14b6JUJ1ralcxKdB3MUx
	 oF0YGUnpR5Y7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F8D778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921543361.14480.4595906166831019777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa682df050b44684e4c29bce05c524434ced821f579baa9cff1616fe6f559780
Date: Sat, 24 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769215433
