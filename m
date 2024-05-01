Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48427210EE
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714542143; cv=none; b=WRQOGUTmQ4q/1FppB++HSPTYFjlZj7qpWwalIdUOPoQDTORSpSq15cuyDPbK03+lMhgJ+q6l8XKrPqSKpDAwpP0ndP2Mq6WQbZji3v/6Y9cY6PAY2MJ4eszp9smadrgq8qtmfB5gVNfacbmc6Bbnp6P/zgIw8dIDLVL0MrAX1BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714542143; c=relaxed/simple;
	bh=qDWx48ebD1wMhzRnbUlwbeKvFaIX9+NkNKDUVpMz/JA=;
	h=To:Subject:From:Message-Id:Date; b=s1r3ogSJ1oLbHZC3nQwC8UhnnnAzdplXwui4T74zIRwCr5J73L9f7y6pRcnFUTW/DQRSiVPXo6xxkDu3bgCKgZN1KDZwEE+LqjvB8Xx0SHroC5mhrPgxciCCA8g0WvWTODvu9g16cjF/D5mrnRnmEvhydo6y4gliCMBnNw8Wc4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs1xsZ8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs1xsZ8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2724C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714542142;
	bh=qDWx48ebD1wMhzRnbUlwbeKvFaIX9+NkNKDUVpMz/JA=;
	h=To:Subject:From:Date:From;
	b=Xs1xsZ8vTPKC2c14emvsGz1udHu9GEGthGxUNIzWpd3SO52dDM8s6yn6JtWQ7smEf
	 fuquW82VCNXK9pAGGV7lbzLQCXB5fQzy9ykrvV1HhkMTySklIKOUQ+SN8uTzsnJxMz
	 VZFsU6nRntdoetmKm95iUUIdyVOHWvQ2cGKlEIwWZU8smKkkvTvd2oVheFBCXzjh6q
	 zWCSEgz+Nlb1rgqvQoX4bokqO/EUQOADcNnCZZ3rIl1zklEQoSxJiP6sQvzdgJ+AlH
	 wG7HO2iNtLINyV2dM26WXyNiSbAGpJZF1cTkpNNkal3Z8ZMcDfovnuPaDWl3tcQOVD
	 X9jR/WXj7zEkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBDEC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454214277.31472.12092493710635006464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449a262f43888b622d27fa11d363f40bb063e46532e0423eb84c657251f8e4dd
Date: Wed, 01 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714542142
