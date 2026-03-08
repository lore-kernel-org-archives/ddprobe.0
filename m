Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1289C239E9B
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772975694; cv=none; b=WZqGB3dUh0VY8keW/Ow3PtK4ZOUg7Mpeozz3ku0hA3fuRiKuWH1rfE58RvAZvLsT5Vz07UApN+g87+M9wO+Fc3Yu2vBs+iZp6fFgRny3QQ4XVdyNVYleZrdc41+LcDofbbjeQda0Pf6MElA2aUGLqvgBTNGNEWtcST0fzQl6qoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772975694; c=relaxed/simple;
	bh=LSkYVpNK8LztlPyFUKkazRBwBFMhjXZH3vKGxP9Q8Wg=;
	h=To:Subject:From:Message-Id:Date; b=am5bUh/Uftgmwx8kkx7wVuLJYF2tDR1cuDc0uY5O7F6/owDoUNRx1SfaAK5Wgg5FIMdMEmBXQ7wXFXghoIBJrheTShuYBpA58pymPh5ooauItXEMGcYEt7IJP5aZeGNlcfaJuRJcM5rtxfMEHcvGLa9VWWx1mfHaWkJG3CQQm/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEzT4k8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEzT4k8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6174C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772975693;
	bh=LSkYVpNK8LztlPyFUKkazRBwBFMhjXZH3vKGxP9Q8Wg=;
	h=To:Subject:From:Date:From;
	b=EEzT4k8TFc5/z2uQbyyVqSDRQ70DVJE2byfUKSFsLomMDfiF2z3yMCgSXAX883ARa
	 uHZqNs4iFFuqZKjy5AhDFMviYXFz7R+upn81vFHhjcig/KCM9TRxvwPfqeEf1p3EJA
	 0t5XTcXbgZV1QdsDr1tcldUzk8HmeieqZXLn6eKniz2If1qoPavSD1odHvAQmkxPts
	 wrVk7AL2WcXFWcN8Y7VCEdZbC82Vi8oho9GpAucFrxVFTzzPR5DJyYdnEj7CMpS8FS
	 Us/ev046mz+5n+95YBNPgvXycpROSup2a3koGSbGcVGSZqERNGIVBuM7E+eqvSlztL
	 BbBbe9PWm1IVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C5EF5866
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297569357.15432.3234654778269366818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd70eec447c691460f96fcd908d07e6032ce7a30251ec250b6fc3c73e7df4239
Date: Sun, 08 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772975693
