Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201D643AD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722068154; cv=none; b=qF1L5qQlP5AqQqsOw8Iu0i9xYLaqeNaP4HS5bMjQkffufvQkzx1I/zeohqeJ3ZHfQOEThpBkcLnzxlUd6ye07YtCmydHsGGQZbQGJuPBSF/VlgvfT3Ibh92RpmYP73aH0SqbMDXdaQ2nOWmrQT926P58k4KE/OT5osIb08PneSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722068154; c=relaxed/simple;
	bh=7llzc+LD+5WElhHzEjYfhDvVuOkDMHGTj9cp5JvuQ2c=;
	h=To:Subject:From:Message-Id:Date; b=SqV/6NCFhbKJ3in0vYY+1clvcMyTNTTW1EnsegfqJjb0ihLPSqraTD5f0JrIFk8EalYx2HknZ2HeJtHllv25B1HxNHSlvAEgztdmQ2BOGyxbdovTB5fRLrM2zdFA0rkIlVH/o7up6ofFzScEtuHU6LG7V8iYq4VOyy0S/PXyPlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSSa/YK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSSa/YK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A707CC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722068153;
	bh=7llzc+LD+5WElhHzEjYfhDvVuOkDMHGTj9cp5JvuQ2c=;
	h=To:Subject:From:Date:From;
	b=TSSa/YK/Syixjm3XbxvuAe6fSzPeT9OyWbdGF+MBMJN/fCe1WMQiKXIp2981chD6l
	 nSVN0OpqqrHQvBjmKjMSrIpDYFFcVinYTr1+RuWnWTcRUsFgjtveWgao47IseK+4Fl
	 2TcwQ+ZfPeqsOFC+MWKFL8DF03bXRxq/Z2KKCUAza0VqqzZoBYezBqF2Q3nte5a0mQ
	 hnnfIuWIX5d9Hl6ur+akB1jvWOl3XCekuy4KDwhcz5prpHZwzIeGYF2dtyL8YgNKtK
	 EP+lEokmhe2v3KrHkpaYworl2qxRKPMHQJjPSETFfz9KOq9pyZp5zO+NF+joqH7j7V
	 2jvJz2JMA0SBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9640FC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206815358.7510.5819672302239087557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e468cbd5415088a78232ac35c298fe4ec6e6c46ace946c3d76569107263cebec
Date: Sat, 27 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722068153
