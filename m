Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDADD3EA64
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710953897; cv=none; b=VZND06MBZB+ImUKumOJ2jIjfIP/anRs+cYj0I781JT2EDwDKR9k7k041rCGvsN9YcZ2HmmJdFFwF4YtPVW6YP7MX8r7HjkEtba8xg/s4M9y6ha9UP6dEIvGdm51gKbGa94aUIGMVTpLMPLoUT6UEqk+JS/KqOcZKI5nViXNZEhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710953897; c=relaxed/simple;
	bh=1K0yoBl0zcgHke5E/r6u6vECHJeCz+W0F+nyT7VzrcA=;
	h=To:Subject:From:Message-Id:Date; b=YfiB26fjuAX1m16ZXd9/wnMflrOOLAgqICzIasNL7Nvc8TE2txKzZlX+mkpGAoyM4XxPWAxiRYV6lxAv5vnrFqRNp7fzBCvwP76Qn2JJywfOz78PKauAySwkcAH2vGONx4AUEoLrIpW4r1jmj+6VGY81By96SjVDAo1AXwPRYww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKzIMNfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKzIMNfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E06C43390
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710953896;
	bh=1K0yoBl0zcgHke5E/r6u6vECHJeCz+W0F+nyT7VzrcA=;
	h=To:Subject:From:Date:From;
	b=FKzIMNfV7v6gewcCXGHZyNBF1puncKwt+H5P+w7cs+wPLenfScIv/HjSd63MNQKCw
	 pBDOy3pXwKNJ1cYZtjsn5PztPrMyydBxUAcbfgmthkeQopL4RMsHG3s1WJIL/re5iV
	 wSd0qM6wFzzkq8zgaTQGdAggjrRs6DMyMei2VNkV3HvC+akpL/YJi83pncT4QbCI90
	 JpOuJyXj8a1YYAD51p6rbydshPavp9+sm8EZpQ98Pvtz1pZFxU+w21RLOiuYq7plol
	 ha/NQrJvLcDyO3AbS3fVazCBr4Rk0L67p2fJp6O5vJhuEBKaXACJSiKSsKSJ7cDSvP
	 ubjVNMgZp4XWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCDBC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171095389637.20719.14266738565786957786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38150d8a7318e18b8df43f3910faa0f835ffc8a95804b3b18fc822e601cd32d
Date: Wed, 20 Mar 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710953896
