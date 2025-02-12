Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331972AEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739321456; cv=none; b=U8pp8yVO3Eu0qIy/eAFr5k5o+ZSjVP1Ue5/vNgjvaY/X3YpDGRO/Rxlsv0HRINp4FPQGBZ+mk+XFPmEasklKk+OAWsS3QVjqFHu79wIk8Kd/pzl+lylj/RH4HgY0tHg5EtQGcrzapWiUg8hrPgolZTty9O2r06IqyLj5OCSVUSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739321456; c=relaxed/simple;
	bh=cXJXo1Oqx640PdNC3W4zo9VmU8ybZWyhenFMhEFMjwE=;
	h=To:Subject:From:Message-Id:Date; b=GFP7FjHJadk/ANVTJaTJj6lCnz13rRInxmtqUkjvptGihPLr/rzULkHoaPEMOARmLaKZyKnu3Q7bJ7sSC1avKPI2nwwK7P7YIIppPErpRILWdKV4e23S2RWyohbwr2nOKi+Cewxr39UuU7YSTuvlgiifci4dXSv5272fQ2JYJk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTqlCZMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTqlCZMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739321453;
	bh=cXJXo1Oqx640PdNC3W4zo9VmU8ybZWyhenFMhEFMjwE=;
	h=To:Subject:From:Date:From;
	b=hTqlCZMTpFGJ+/cimyLEZmWtvXvXHkkjskQvFyZKROBGjxfQRy3F6GkGqGdIbyOrr
	 q1MKd0vtYyvdtSrxau6SgxvxaW/qOeT7cv/81aBJwSl3Vs4TNjpc4qjWPN9OaJy5hY
	 spYzvL1BhOupcfC0ed2RhKogPYWxSC3XhyrnuUwA2CVD7mF4wSIDHe40noVDzq4ylY
	 b51Kh2a0slkfvCLazoGnhMKnRcRC2nEoOF08sRXuWz85rNkAADIOwIHOyjHLsXBrFQ
	 8Hld5yF5WLCMAF9OQZp9JcOkfUceLNxzdPSVYvyxYrI/BFAoRxMpTvnWEup29Ht3ze
	 A5NVLy+IK5EWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4FC0219B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932145361.21004.1981750077627758638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e748ea06d649d783f890d1a67825d259ec60b835a45c07d465e0ce0e391a28cc
Date: Wed, 12 Feb 2025 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739321453
