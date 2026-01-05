Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F423168E3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767611034; cv=none; b=Ex7UQZyXNpk0jnld07RQHk1TUhxK3JhZ+EWSuTMcC3RY6w2B4NS0eHg7V4o4OARx4eq0J9nQrNHyowmK+UcLvfZQ19AxocVHGzCg7zGyLjuvyCCOTXlheL6h/UO3+XB1JrpWSm+3ZuLBYISE+la3wDa+l0h9NOdr84ut10IH0mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767611034; c=relaxed/simple;
	bh=YRIjJQ6ts3yCrKM1/sZAhzMDJg7b3ksi7QzcbJMjxbA=;
	h=To:Subject:From:Message-Id:Date; b=L32nwnpICXDH1jas/CVYFY2GJcxAc9VC+aZ6pkE6avZZuD8vhJv4Bxxp/ol4/gsb8pcNvQ+veXzbA5pdD7MDHKGaZYzbED+uYRXFyKmMcxpCb4owPbXsu4Koeo1gVdU8Js5kMgmhfVHeqSPwgg0bzKmQU8m2/HaWFDUSDhWqTQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCPnwZmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCPnwZmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE574C19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767611033;
	bh=YRIjJQ6ts3yCrKM1/sZAhzMDJg7b3ksi7QzcbJMjxbA=;
	h=To:Subject:From:Date:From;
	b=tCPnwZmxXTtMCrk5Cm3EdBk4UZQ/quWFD23WorGGWz1aIXD5euDaKWFhk9lrBq+vW
	 dDqmu/83lDqpIpCY+bD+kuAqQiDzwKbl0jK+tieeveOLsOQOpNMHwZmTCzLXL+R1iu
	 +0g/lvWX7n0939EUgA+vqmC316ibO3/qfBcZSaWJz3pLa1UfgQa0lP2Tv4dKFXusBe
	 tTL8CXFLEIsJ12JIODEO83FLkX0I1WIxJPJBzlD2cy1Bw8oE29K0JKk1ttzd2/YIis
	 I0ZEglYHGPffJpKG/x2bke0TiXjd25cDBfNqRKkFKa90y2E5toj4kiDXPJw6reCfmX
	 NZiLaiyDmfxZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F779C2A099
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761103363.32692.17467895157816070708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90d075366dba9a6f614e51d0e279d673559c6513ea264542a630cf2fd17aae6
Date: Mon, 05 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767611033
