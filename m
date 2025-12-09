Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32044275105
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765316574; cv=none; b=APixN1OBd9Mwa31BkBR8Of6c3Ojm1B4si3ZJQ5CGxCnupFa348n2LCmVoqQqAw/a1DbXtGcohof1cMtpB1DzpgdXnXo+v3aAZ5jwdB97gy4QsM+OZ41fUgZ4i3GAI9D8inBKO0kihv16FpPs+1orK1dIpz+5H9hIzB2jg8UT274=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765316574; c=relaxed/simple;
	bh=uQv+4mKkQHJm9tL1PSqSZi3LcdOLMD1ZfU1KY5JMVvM=;
	h=To:Subject:From:Message-Id:Date; b=Unjfs83ewa/yKp5n4zUe4nRemBP6UljvX8+DKTwSZ1QDbFKlajcU51DoZejQw9MAJwF4oAzUH9h+ypkOjOAa6s+fFRa/YMk+YuWp7k+UnHyyli8QsfFkotYGRY30P7coWqQw8ltzURFNOojUdznE8EJF+rWsw6Ea32hNakF7go4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1Im9ojJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1Im9ojJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9228C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765316573;
	bh=uQv+4mKkQHJm9tL1PSqSZi3LcdOLMD1ZfU1KY5JMVvM=;
	h=To:Subject:From:Date:From;
	b=X1Im9ojJN6wFgSg1Jnlw6jPOXS9mepKSIQ7TlXjtpiAJME1CtWKqkQZKEXeCYG7jv
	 isclFTUdXi5lIaLA/w1L/0wJ6oOTJPtSvcHop7Cm6Yy2+DCzxX938PFQCiKXF/OjGr
	 kDu1TKHbarCgqRrKghEI6u+gQ0c8Cljuy2/BpUnQfpqgeqs+Veez6u1jOG3wl8OiJM
	 sM5MuZnISVVJ7bk4StL0zg4Z5rVMmkCCbvr2O0naBGBXXJC4gb1GU0X2OG/w18hupm
	 ZWJj7Ns6GXacXq8cHT94N3oagViO9s451J+auuVG3OU6zMJuzX6wCjOWis7Y8bikTl
	 siPgP+Vwc5lFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971D5D3B99E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531657360.21901.18110748797358055220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8582a4db71d7a4a282687360f25290070d30b3da07b4b750bd674055f830051a
Date: Tue, 09 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765316573
