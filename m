Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4825F1F429C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742642994; cv=none; b=dAQRCIVoGnCta26lxhii6cvOmffPD5jHrvFkPhfwgRkC1HRbh9Om4l+VEUPdj6h1dh/EOprRl+qL+zn5up4/NnpnEZ2iOO+yqubZIE5uiDbenYxpQl/gWUKqQFVK4Av2w2/pnhgLv5oLrqzJ9eqPFF2YfhpX+Ci7HoW7G7K8CVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742642994; c=relaxed/simple;
	bh=GwTtwMsYoIqGRON4vtRPqVAHP6IJn8gHAM6b5Pgy1J8=;
	h=To:Subject:From:Message-Id:Date; b=JQtGng1nKdhqLPFNZVl3eobo48AMmFti4S9uRwAWc6NahVQD1SgNMYnToZ8D8reZjegqy6NOEpbeAqy8qg7oBchsB9iAhDFzBU2t2M7fV71t3XEbWMMhIrOEW4HjVG1KeHgASrCYZXQD2HzvvowxnQXKAoinMd7c9uT3Gtb6UeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnmaKsAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnmaKsAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DD1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742642993;
	bh=GwTtwMsYoIqGRON4vtRPqVAHP6IJn8gHAM6b5Pgy1J8=;
	h=To:Subject:From:Date:From;
	b=SnmaKsAotaO4ovtp+gUUpBKqSJ4XIX7f4atVY89MaZILK/ISEWcvqe7Xpbb69sSwJ
	 7THLFzdEEhnuRS5SqS1NS4t4l5l4wiESHBPrb8qV8rorkHrEz0P13kCcjlPHAXdtto
	 wvML4+xQZjYjo288lXTF9SbZqMvKMHo30zaFm9du0e+PxLA5fcL5R8JUXBtSYlNIgV
	 l5Pte5U8z87B6SVm7nnCLrCbmRXWKGLk2Lenrled2Vfmlo2fBYqcIks0wSd9ZCvixV
	 tKHd40e5YhZ7s5oded/R8BdMWD+tBoj2EzirkfAdhl1do40vqT3QpDE0rCPkYzrqlF
	 z7yj7pp+aflPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E187C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264299360.18061.17217877023250369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da5e00cd47381e4ce729dffc128ca495481dd156f6fa8959e6812879650aabc
Date: Sat, 22 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742642993
