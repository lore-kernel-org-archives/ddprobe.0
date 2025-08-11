Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1275D1F5820
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754894394; cv=none; b=Uft+TzTO3t4L81fYtyWplbpQQYc7iwocHIJpk1++IPQ9Suy7z1epS5YKR2ujHLhDmI6Swt3aewgC3cm0rRtJo9Fe55T8QGqz3VG5SKarrs7zToyhNG8QCRfcT2iZK4TPN4kxfbbK+scOD1U2MBy0xZTmTARxAhSaqPlwt9037Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754894394; c=relaxed/simple;
	bh=kTBZZxvZ2O1IFWHd6sPXAK+e6MxQwgPnuF9CnL7Sl70=;
	h=To:Subject:From:Message-Id:Date; b=Zz+7LppRnXjzcOs1lksIl1rd6v5JbYjDi2tGV6+XU5CE1vOpxEIANoCYIa9QqgiqHkdC+0/TYfRvK6EAV37tbiC3SVGa/P8/fDWGP7n2huGzMevH0Hvainw+KzAoWVsnDawtt7h3ZyjY2slOaBTY0JGWpeZvLWXZe0rSH5yZ6pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlpZwJL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlpZwJL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F756C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754894393;
	bh=kTBZZxvZ2O1IFWHd6sPXAK+e6MxQwgPnuF9CnL7Sl70=;
	h=To:Subject:From:Date:From;
	b=XlpZwJL/Lgp6DDDUXm4/RgLrV41QhTp/chUAzluegv6pJaHOt9Izek1byCsbCErdD
	 loBRJ1LRqDXNnayzvpfAIvtr2N/pD1KRVuM+nq0ELr/fVn5lgF5J7L1SXLTutPN6+O
	 8b5YITfIhRV/f+BXKXMlhG1I5rlQ/s5xlaAXMfHS1w8mAz58At82ZYBBZTcr0Gkk8h
	 032Rj6DLvglzQsqjkmDZmDT3RTiPxqI/ud4uy0pdYm9Hj0mNWfG7V762ZkUBRGgu2q
	 7dO6VhLTaT0p4+CyHZqUlH8lJuO/Fm1NwYHoDMjv21UAab02iCTadtz68pyBgLX7a1
	 uxTXe74VvQt0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9182DC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489439357.23112.16727256838914701413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ea8413b4e350e41379671472dd0888dd3ad7df81dae437e3423bf16fb109fa
Date: Mon, 11 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754894393
