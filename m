Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C992D2D837A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754896793; cv=none; b=Ru5QG4czjiLHh0kzaq+f3SGW2aKF0sSJ0bfqmL9G9FL4005+kvh6qxkImI0eSphEf1G9ZpfmQVSye/PEsWSNvaiMfVOjSFGPUnQilD39BXFS/iCpCyxx4SYzPp8vZjAC0LkPBcbXgVYXNagT17s941b4fUC3NILwxJUJDUeTcBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754896793; c=relaxed/simple;
	bh=UylE7mmC0DwA8YY9eOCZMdUhEo87KxSCWq7NZtM1buQ=;
	h=To:Subject:From:Message-Id:Date; b=e3+Nz7Sw+CjRkUFrHEExzzF5S8JiC8ltPRFAJl7I8Rl8GULXHh77ZxxuQtPHbr/8rJsBIQZkDxTbEDsYCSXcFN0ivLAj/+jyZPTJH4JMSx6+reRRqtUONshPUnv7Kplxx+kM3HIpUeDZYRaN4oJ1GZuGxY4C3IqxzizjqYBAQKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr33OLaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr33OLaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F386C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754896793;
	bh=UylE7mmC0DwA8YY9eOCZMdUhEo87KxSCWq7NZtM1buQ=;
	h=To:Subject:From:Date:From;
	b=fr33OLaTYSyYFnwW5pdenwieUH1D7iZDRwaKRWMayqK1Vpqsij8OZwIaTqD5mr385
	 HpJSP60vo2Lm2USgY5YSKk/kK5xvAUZBMORX5sbHoFMVwd1tvj+rrxSc08etexw4by
	 AP4yMvvLyB7Mf/QkYPoWIoj3FLTDMLxPWOi3FJtin4Um/f55p8DnknLNFEgcPzPctQ
	 85JCfA3OmFsEedt8onG9QbBYa6dWZpTAXy/b7tlnHt3h8EFx6yl4jjPRypsmrr+nW0
	 SsjtlAAw+/oC3PBaGN07YNQm+8HztlreGPPkoocx+fZ9EQrdEvXcTtTOyOvwu6OEOP
	 E3lQaIDVyIzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB8C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489679357.29548.10342284243050200022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0f4bdc1119fc21e32072337537691684a445761a8989f1c3c5132977689aaf
Date: Mon, 11 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754896793
