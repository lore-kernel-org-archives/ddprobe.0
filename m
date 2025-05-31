Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3B11D63F0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748671194; cv=none; b=GiqE1gfe+tn0/8cU8sBI/zjOfzy+njGtfbd0SjO/xRSkxXJ/bqNqy3Ki7D9TSgxdEnC+eGPTrWb1jofgnW5TCKBF9IQD0TyNdVa7F+Y2yMa+98FHgv/63VXbF/i4/NWY7ZV4AmrLuJdGjnThKeosQU5ZEgUOsv0AfrWuAcRdaKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748671194; c=relaxed/simple;
	bh=QTleYo9UxJQ3Bq+Kt/+7Axiy/uMC8gOSvfchAs1dn7U=;
	h=To:Subject:From:Message-Id:Date; b=M/jHQ6tpewxUrSnr2ONZFGYk+Qi/n31grtH2VgTgqdHSa4T7kTKYkZUxVt2tmsL8JINiAWaB6Nl8E9js3r+oac8mQOneZn2RdO1lau0plshzHMoqVGU78zrAq2eO2CMCfoSpAvDUn9kyz/98YbS0DFVqpPB7ZLCbh6FS+VyAey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzhMr/1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzhMr/1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5498C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748671193;
	bh=QTleYo9UxJQ3Bq+Kt/+7Axiy/uMC8gOSvfchAs1dn7U=;
	h=To:Subject:From:Date:From;
	b=qzhMr/1OwoFJaY2WKeOmn+i9DfvC6Z7bgF2/Rm/7hUyT7hQnDX+FihwuEXb0NIPfo
	 yddLGZKWTsTMlqeSzaNWz48O3et7/4YNBzRYBTEAkJOTElSiCFYCyRuXqvsb036jMR
	 Nos+Kjcd7+99C5lT8i7BHf0nRz4bHp5U40fnPnAwK3ufYYMtRtMWTKHScN9oeQCJef
	 TCLiqY3BMwfv5xa/dk+1rCjpGY12cbUWqeGVFAQhV8kqT8P784IG82VXmGcc4giVWQ
	 t4QIaIQZZsX6cnvFgA8NsTFeyc75ffurpjVOeTO8p0pMsxgqPGzNqXLGD7dBFpE+7L
	 lZ/BjcLfkTMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907FAC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867119357.27386.13899226835755038079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12efec10a980cd8e165e4ee59e0f633c52b5f232c6476298a25eefa2bc98afe8
Date: Sat, 31 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748671193
