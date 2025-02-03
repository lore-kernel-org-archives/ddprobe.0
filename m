Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4040F201270
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738596955; cv=none; b=Nz+fNk/QjZ2K/H9PqEK201tIs4lU9SbR0VDXo3kmcDg0qQVBeLSBK96x+RvzM5/lmSBvbjPo2a7ybRcDts28dbnE6Rcj34UamRtrdnu1QyMPh6AkaCuLXaMcQ/HgFdEM9CaOfPEt/jzUwC9dk6jkPqsr795mVNV7QafMcMuMSxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738596955; c=relaxed/simple;
	bh=lWzwl4nobI0/z0Ghsi0JDmeyq4CanQ3Tq4Gc9NpJ+Us=;
	h=To:Subject:From:Message-Id:Date; b=HRSfZZYJTgYaJ5/tsbbIgCg6pB8OSlLmn0mTcRAwN/7bFTQHhU7y0LuGB8KrbeWLUd5Q0PqTyJHmhC092byYyOxRNBKW9h/CLdV9aq1lC3kdMWXKhkYqb5dvpwKIpu8wQxFzle1TnLM3N0sH6s7oam7/Im0zS7C/nvJawoCx0to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvQK2xyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvQK2xyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB658C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738596953;
	bh=lWzwl4nobI0/z0Ghsi0JDmeyq4CanQ3Tq4Gc9NpJ+Us=;
	h=To:Subject:From:Date:From;
	b=AvQK2xyr7Q7xB6+PncPNmz80K2OJRymKTVni5ACKyWpDc9ENqfbpiL1gORcELWuAa
	 2DBSYBw8ier2RJLtjSOLfo2b5l+0Aahyj2Mzcotm9J57ieKSuXlNRScoSY/hHIm9C/
	 4IVBsO1OPr7HaxIuAifwHaYEHoswaNYEa6DV4PxL6sKxquciH8uGKUFVuqrFp2FO7j
	 K1L9r/Nf6oR1tEURY84BXH8+NGrJPQgos7/xIbPvuNvwOzxuxkED593+iIAjanGopM
	 BeaSF7ZOZ/J/KxXlAFri3YA6z6EkRAISYE2j/LnibNTnROxynXXcf/JcSm5BGm75dW
	 2kAh6lPUmr6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70E0C02195
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859695367.28328.6153089237281500083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149cacea6103e707f7e727a440c99a4591ef926a7f49f1587544dfdbd468ac1e
Date: Mon, 03 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738596953
