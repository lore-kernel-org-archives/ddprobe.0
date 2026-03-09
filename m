Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EC3376489
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773055494; cv=none; b=d2MBUYPFXHQI7fgih5HOZv62kzD9Uzt2S4XLS+iUfY0gDls8SEJx6oyb+Zclq1y7Q1LQjkrSwwFDb/z7OoohuDPtb78CqCvSHBVYQUCufxJi01v3l02G8hIc4//rbKXuCjLcHlOUhgPh7xodSgZ1EOjDTdi5x8SoxdQ72P0KdIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773055494; c=relaxed/simple;
	bh=EvnCi4CyLBc1BoFRYPv2frjZ/Ogkw6XcrJ9i+iLWON4=;
	h=To:Subject:From:Message-Id:Date; b=EUE1hIHYBNTkbES1NzcGRcSZNEhS/ex1XVcEzc7VDHGan7HA9N3rGlWJrjPmCC6fI/E5AH53MdNDQiZnBZZQpxU302+MIFPCXfkLUcZwrwfJNoZ27P6EL6yWkGKyHQELQVUoZ5iACkRwlUsfB1zdQ/wHj0TF7IIoFTgHSriolDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrLYxPn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrLYxPn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F237C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773055493;
	bh=EvnCi4CyLBc1BoFRYPv2frjZ/Ogkw6XcrJ9i+iLWON4=;
	h=To:Subject:From:Date:From;
	b=QrLYxPn+ageEjKjrCPf51hB5pJnrm0FKz2Cb0wN1Q1jU9BM8vMpcLSCcbSjxsVlnc
	 +Fv7ctr6zuVWop/SjH1TWTEPvnIfMs7nqycoHccfq9PKlwP15XLD5eVyaEgZwMWNgg
	 uz2xv+RBRAxdeqbevETdUk6zBf8pV/fZYOhHK59lOswQOOmeWdaqV5MMdQt7jOw7cf
	 MQ+LBuTTZu0ivwFQME7w61qJdrvvlHws3Q1dC6peNh2tYOt1XhpCpy5ZFuY6ie7F5u
	 1qbth/axUm3ThkiVKZXP4KBtaSzGfKtvgsaFQtsJYXfHxJvR7is/eizTUcWvvzB1rA
	 zk4i/Bf1DWROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC5EFCD99
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305549358.11488.10350113208227937852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0db3479de4e015f43c6f2ba5e758772569f7281e952363a03ba20995ef44b24
Date: Mon, 09 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773055493
