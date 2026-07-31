Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CE36A343
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785483634; cv=none; b=EviCcEbRUXwYjf97pgqG1k+J3W8Ayf+ZMPOPkHxnzhsBdwQ1srmmhLQNVE9+v4SOFTLeQr9YhH3na+Yu6exdyxeO6yyHxZnZbOcwsqnY64x0Tq1Xw4CH7FZPW71l34qU0uqfSWlLf70cJ6pixvMmDt/BgRNHfnzJzxVMcEJMNBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785483634; c=relaxed/simple;
	bh=s663M7gHR+u+GPRm3NhPcYKoEDNgMCwKkNA9GYU+Fj8=;
	h=To:Subject:From:Message-Id:Date; b=a1Tpk2SdA1mQJCwx0+AarYu7zU5OAsZwd/+G/xak1eZdBOtqDfC0p5+6WG0pm2cLyuJL2D3ztX6fNqlHysmgtJXt1fEHG036+ICY1H7+wINpXNX+NcgA6t/GjtiSehBz2JLMjQgjHprFUIcfrtsVgx25xs51f/Ak4OyCKRty1o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVB+HFEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVB+HFEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D0C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785483633;
	bh=s663M7gHR+u+GPRm3NhPcYKoEDNgMCwKkNA9GYU+Fj8=;
	h=To:Subject:From:Date:From;
	b=MVB+HFEWasqmEkylbA4Zf9/f2xTcHHvrhiQlfhxnPQd5mTvkN2sDp8uzJ9E9HAWAu
	 hPV/2fY7E1yffy11lT6oRg5StBk6EEJHq7N5B5ldvXREYszsHJ06TJk+FBufGbu9i0
	 Tm5JcPle74BJ5dfOZDINTgxnjxHDPGECNZBe+hjxH+sGL43ZHHIagiG/QJzpd6tis4
	 xjZEBBdO2AzFhoXDP6spZd9B/CMsnNxlLqBcsVi7Zz5ryguszWSLiTxzxKehIA58L3
	 7TDhxa44H5hBC382MQqxGrI7BSZT+M/+wp9bqZidU1Xa+1ujOcQx4/c/QqnXE6P/C3
	 Va0t3acL0G9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC63C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548363370.2378.763159868507527727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743b323daffb0784774162354611b6ac99a6f55f90ee86a87a9026ee8530cfac
Date: Fri, 31 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785483633
