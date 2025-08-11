Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE5F1FAC34
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754942994; cv=none; b=IjU/hcaOKwSaga1m3u6WttGMYFJCeYc05zjoqQCIN4Q6QYqgvdKo6+JPyKNlvueecSJHfI0r2sW2qr4s3xxNHDVIoB5/eNWyemQ/eH9GC4ThKmaGzxCPFU2+52yCe8X8qRMJ6SZGEBMzDNjRTTvaqaESkYsGd885hujovFUgEn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754942994; c=relaxed/simple;
	bh=HxQO/Lx8XXnmRA6sQxFxRbwBTcYDJjdgItevMhLvzUg=;
	h=To:Subject:From:Message-Id:Date; b=t6a5uobiHPhGJz5Hb8Rp/02u0Z/axdbqpfdNzMZsaIFrvGBGUJaqT4lA0WDGrtShBumXdWzWAGc05CSP+Ux9mXylqKzKCc0XUutv0NUd0tsnB4N6pbngyXnDpmhTHtpPXcKv1BQyo+B/OzYYX4XWLa9RRRQJFtlbgRMt/znspbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLrymcIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLrymcIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E81C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754942993;
	bh=HxQO/Lx8XXnmRA6sQxFxRbwBTcYDJjdgItevMhLvzUg=;
	h=To:Subject:From:Date:From;
	b=bLrymcIzosUKchzYDIhfGjnpEPwxxsZguj3liXSXhqmOOZzxQaP23Y5yUsG1gtgSb
	 HE0/2KnXokrsX0dn3TCI8+cV6DigTwlpVAxYc9Z0zyzZS0n0foSfOtwDWocMGfQR85
	 Cb7tfLDAYn/OyWBxvr0CiALTuZaht3iWsi5rcnhzuKX2Mh0LRm4LNFqZKL82BERvVw
	 0dh3F/YSwaAplrWHgaTPp3bZANW+MdYHNzrZi4Qwphtj+lo5fi/3+jY4YM79b302+j
	 3mA3PJr2ucOKzTtuQDknWiIqj1AlJlDc4u3+zPVPpYPwgTXc/FFTEKaz6ZxTIFeMQH
	 udqanAxIasreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902DBCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494299358.9096.7544938154267746229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192ef756ef5935c89598935f3011d4309f9697662b1296ab3503bc66ed6dc59c
Date: Mon, 11 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754942993
