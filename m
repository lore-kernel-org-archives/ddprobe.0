Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A20224BBEB
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775603134; cv=none; b=RAH0+yPlLZ8k+ncPqoCpR7ZCC48N4q0fjpZnOqr02EXwbabdBoGfSBeyG29d3gX/UweQ9RDn0QSGMfUzbZ6XoH1v70AT+9ROlKEmVloA+BpRGkXPIbJbmj5MhV/jx1MN9teASI/endMIHEFZFslq9OODl1LKc51WeGLyNSRIWkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775603134; c=relaxed/simple;
	bh=Ows7KjuLpzo0dmhH4GxVYgdicWPiKa97LKkGJ6xbSCQ=;
	h=To:Subject:From:Message-Id:Date; b=cJrzqmlbQRmkV3mgCjnreungiEamOWaF7rwNUNo1MDNM1W+M3H8WMsdvT1OZ86/W5gI0JQLO3bgCO5oYnIts5JTdltme2y/OaXMs/pyJP0fAtdOuC7wUaqi5meXBHLGjqxvbc28SJxS77X2XbvuPz1cGKq1mbYUCfzeQcLKQfrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyWyc1y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyWyc1y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2C249C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775603134;
	bh=Ows7KjuLpzo0dmhH4GxVYgdicWPiKa97LKkGJ6xbSCQ=;
	h=To:Subject:From:Date:From;
	b=qyWyc1y0aG9Fnu/19NkZ9F0fz6keGkxYTPft8+QNVXosz9ayiX7MVBRzPOLNdK+0D
	 ei/hHQS7YLgRZduHepVszyv5n0MohZikH+achravwOPm3B5LEcEqFLamE0TE+IkBHf
	 RS2nyerXS9E3bpzUJwy0frvliL0GA9eiqz6B+xLECDP9DB+XyBxZUlls00TjUPvl/9
	 Wh983AFTTHgQ//OD3XMl47c93kIcNmd9Gyi18SgZgZPaoUn6w5Gw9C8ZRgHi3EXhXj
	 5ZWcmfxXKvHsjH7kxmWrjFqFGzUWiBFgzuSn4MdZoP9C7HxVFvLpf9vHmc9lCwc2yN
	 BlYHsr80cTHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C14105D98A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560313387.29386.13785735305742829275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac8edc3f03dd11cd5312275b5f063d9e07f5cb1ba969c71429deac0c82fe256
Date: Tue, 07 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775603133
