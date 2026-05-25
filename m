Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CB2285066
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779739354; cv=none; b=nWMsX248Vb3+ogBCCNPAbxS1wwgKLWEo07jerKWoNg9n6/za/Zpr+N+NywQZCl8p9qBDVLpBEsCTtXnraY0NIV5q+XvNn25bkdbspzCldcViu6vCV5w63oWOWBwzD6EF6S3H4K03B4cg4y61zlBUGmuqvm5sEWtfVOmsFYEE8vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779739354; c=relaxed/simple;
	bh=LUFop/L9tMN7DbHpv2KS0nNJeJqvy7T81EUanMt2WTk=;
	h=To:Subject:From:Message-Id:Date; b=Btp2sNfRDtr7YrIZv9V9UfGy/F6HXG+RTxbBZOD5NKpcx+lBihPE0crQ8BnNzfo5ouhdEhd31YnfdvmDzhTw0aXqZDNZKvhWeNgCrYF/7uvg+rZ9S0Z5Xy3DhucxlRYVUEPCbDYbHn9GXnRCpvE3BSOg4GVtpQ075h1uUqXdXSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3wBI8QR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3wBI8QR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CDDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779739353;
	bh=LUFop/L9tMN7DbHpv2KS0nNJeJqvy7T81EUanMt2WTk=;
	h=To:Subject:From:Date:From;
	b=D3wBI8QR+zyarlHGzLz0Aeq+BfR1WnygfUpjwnOvJyr/k5fBNfcyW4x6sXqHGXo46
	 LJ8hBAKHiLOovgiodJ64EBQX1AswC1tI4jM3tU3zgLzBsg89KVNmDQQEklZLfOSdeZ
	 KLT/Tdl+42EtRU/e70ePnTX3x1O6FcWzo6pPqLfX0F6aXaF3TbaBiRGg/7cFJrSOO/
	 uZk94Vcy1lO7WRiSiQmiA+HU921eW935gWlXpAWZJSjufwbF9DqXba0s2Yf4BXnvkg
	 W7IhO/N7KpWjaesof5Ljkr36pYA0NM9xsP+5tcE4x2+7Sk2K+uVlemhIBF6g1vexaw
	 G7IixjZS5Bw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B0CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973935368.11348.15585491041253083357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3077fdaa4608541f258b1c26a33893500787acfaf27dea7595b14683ab91d610
Date: Mon, 25 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779739353
