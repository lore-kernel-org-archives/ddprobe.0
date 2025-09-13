Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E671E501C
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757758794; cv=none; b=RdR/o5SZLk9gE0Bwav3J9+W6PYky41yyVc7JpbSQWQ+dg5WVGD0s79jVwE4Ccxan2++2pdySAldFxlf+8UTrDjTv+y94SH6UdBxHQZXMYYuncJQixrHv33jg+Slepn9igHcijRNlL04jh67WH9sgFN3rqlNtrVCtHYKoRk89EjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757758794; c=relaxed/simple;
	bh=+s5kWzDW56Bpv0ZDKyZC6J7Z4/8MQDcgM5e9RNDovzU=;
	h=To:Subject:From:Message-Id:Date; b=bcPP9Sn7qolyQjYgWBUDNauGdz3tGZh7AWkRQ+AyFRB628MzUdplpMSniE76tmjTS3EaLNkOz/LnOw3/nfFxcuf5eUb14+VBxHUfqvqeWk3IVYphKjGT+3Etxpw0U8z10fgfogrm/73u83vFTlNfZtDIpoE43RsZtHicNCKw60A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av3VA2Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av3VA2Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3929C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757758793;
	bh=+s5kWzDW56Bpv0ZDKyZC6J7Z4/8MQDcgM5e9RNDovzU=;
	h=To:Subject:From:Date:From;
	b=av3VA2KvHu1psNzfl67dPG8qYVn7hQ9rGJn3MGuAjO9ojPowkF/yFhbsNKFh8Syiw
	 76+0s2+fZCF5NtyrdSOWAiKulzCDpsiuDB8NfsSnaQsJXnVhMXoQjAlw3WHvyafBK1
	 pJxeJUVVnKU1GFRa7MLPZX992w3KAtLZw3IZtfdxhHdxNzjACEmAJsn6Z5iZIwpNDB
	 WuxYw2B7OhLjBILtlCv5x4y3MxXECvrpoJXy72ta8LLiRy9kYt8P9RepbRcl2nDhbY
	 JMzQuVpKHm+WHfq0kHtOFrQ8aEcMXscviD8vi99p2r9plPXYSN6GHU5OS0lYBMFf22
	 u2WkGU7MzrJkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A32CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775879358.17748.1860937954321555044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b7a41850577ad227003faf5da70417c4556429bcc6d154278ac2a462059233
Date: Sat, 13 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757758793
