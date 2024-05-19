Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF617C68
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716104543; cv=none; b=hj/p9PZ4siWJnhy3PpMGZey1SrhoDgwHRZ8Epb39CRmDgMrya265+V6MZ7fsb33QvOG4KiTm/UQWWAJxnOqSashTEbt93uuEfu82OC9hyYHstwn66Mk8n/U7prZv4OJDH28B+F7QKr83VETrRdqV8nR7bDFvt91WuEeoQpQPpU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716104543; c=relaxed/simple;
	bh=bvl7xHi5dqWx+PVeejSXHg7a5zBTGHjgRqdCaKeaK5U=;
	h=To:Subject:From:Message-Id:Date; b=r6aKAGw6iZIRba4N3xIEsCSrnc2cwApeRrjjjaAuirA1LMlTS0nVWhbbMl0cGZ39GtkZv5dH7QcofGhKap1adAq0EVD8I9oZkWMUbmLPV4lbDZdNjTyI0Phqo1m4B4cGRibNZWLyLMNadXvdFg+G2W+YUIK6H8oNREfgfqFjr10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzlXYCxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzlXYCxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38B8C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716104542;
	bh=bvl7xHi5dqWx+PVeejSXHg7a5zBTGHjgRqdCaKeaK5U=;
	h=To:Subject:From:Date:From;
	b=BzlXYCxHF/9BRgfEbikG8WZF+fbODWOcghfjOt4GPjSJMmuDIBkQPDNbE6Tb3GVGV
	 ufuh6AWlEun7e1Oj6IPibFpBM6eFrzkB+UQG0KYPMZ4v2pvvkG/AgHd4u4VKO/02Xv
	 u+DFIHrZ2VA/QlayPCqLxMLy5NZivo/Ktnp08xlR5Hmp7h2KZs3Xx0peDe9OikrNrP
	 AMopGAaMpJbDD1ib4IXvRVAJ8xO08o7jGAS/RkYPxPcQVeX6eQDEoxnl8CE23Dzr45
	 dKBdVFuaar5EfEG0GJVB6gEmOqd0N/qzsYMDR0p3KnjWrLek8WnDAxJtXUx6qyhTx2
	 dueTXfNKhst2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED88C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610454277.3761.4579010638717598890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e9cd30ee88b7f147bc684b2471d657d3190276ca153e783ed5ef6071d21698
Date: Sun, 19 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716104542
