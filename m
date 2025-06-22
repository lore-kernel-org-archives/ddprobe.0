Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DBC1E50E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750599594; cv=none; b=MZSEA6ZiJPg7+s2wyiazqc5QlUVjMgUYGub/uWywfVf/Ir/fO06D7wC/OJxX05Fy34CLHW68ikbAI8ki7CnTX0HT+YRr+MajKFFY65fpBjBCmnborimOWJ4AjEn3XQuth8iBXd/rlrk5Y+R7ruzrL/qt2VX07gqXzf7oK7lBrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750599594; c=relaxed/simple;
	bh=/MJ16T5Xb9GmzDti+FhohDpQ4fHI2Gkiuiur06JtmH4=;
	h=To:Subject:From:Message-Id:Date; b=Cn/2yweD6sMPtqfpQuov2tpSihsqRin4ZV3jNXN9zjqFYaXKZXdUDOHBjq8/e3zd0EveoPpXwKj8LFoLiOu/pvCoEaQgyRXIl3B78888s6MqTm5FDk/4Bt4BjjpMDQfETZ8TWfwkMPchhZtaEr1Vppr4IWwlM/55syFu5XNIquM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHomWb8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHomWb8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750599593;
	bh=/MJ16T5Xb9GmzDti+FhohDpQ4fHI2Gkiuiur06JtmH4=;
	h=To:Subject:From:Date:From;
	b=SHomWb8oZnrxP7FHilLtVQ8Hgqf/TQr/GcxwoEWjxV4l7Za35DzmxATpGJKsMztw6
	 Q4m2cnai2fTJScIBTdVBZM6tmkWyeZ0hHtZSHJhM6t8jL8V16bcHeCKSaAF0apUqBf
	 S1BOS4mI4E1s+dZkpfmUNFKkdqw5kK6rEbwK+V2kK7CCGbTHJjFqsYN0XQr7VeGP1a
	 mxjOpDiMZrwlda/rZPPxgyA9rrggiCeVEbUUBcft6V8bRewM6/kUERDNJqS62dd4bv
	 r3tWyy+f1OJndK42Xtq+GFjdJ0vRcYVu3U6CFv/N3H23cGZZpG7vAm/nhNAmqaF2Rf
	 CIvVWnT2UPjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059959357.15130.2307716478139989414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e213a8f18f6f6fd6012b72568622119da007bd833c12fa30c62e2fe588073006
Date: Sun, 22 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750599593
