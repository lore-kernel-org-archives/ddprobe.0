Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C014A62B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764513774; cv=none; b=ZJG/gK6wAnZMAe/Llf8zH9jwM3e5lajthRWpxEol4AIdtXcHe5UjjGC7aWAutp1q3MN2btcgp0bNLB1kCOamMw6AfQ2aCmfuVcGQLmBCgamOGPFDnaQB8xUU/MJ2OLExlbsgVb0gixYbMf48KPl+bgx8pqVTveneAUzhxHvYmJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764513774; c=relaxed/simple;
	bh=5QD9AWc7Jbu3HVop2mH1AcdQNgWFkfE/ALtwiSn745A=;
	h=To:Subject:From:Message-Id:Date; b=B3UFrc9gpnAZQveT/1xhv3/MfZytPC9XZXrnyLRrBXdt33419fCVyB+aESh3sJ6peZHbyV+rxE0Jq3Ce3EtAVmHAHMByY1H8G53FmfH/Je1mrYPfzVi+xSO1eSR7cfKw2+1/XRFows/sV7W7mzvX6C+BDuAwVrbAnPCG5Zr4QYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+n6jCxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+n6jCxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD62C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764513773;
	bh=5QD9AWc7Jbu3HVop2mH1AcdQNgWFkfE/ALtwiSn745A=;
	h=To:Subject:From:Date:From;
	b=h+n6jCxbsKrz57678sl1DG4MmMSfkhN60SuKd8/6RZ6/WpULaVgAL39EPTAXb+z+b
	 uiXE4BBQiTmSoH8DJjlQvKEQuZu4ZHnEmsmQaAXF+Lu4R0oHx0eyJf0M4mM5Qx3uJ7
	 98zt3lrqJNiW6SV7D8gQ0nq6TUU2hpS8Bg1BwvZXH7r46Vq62Zdg/gqZDcfVZQsZDv
	 taF8Zwaotuo1HhMhn+2zKeDnRRN+lMxE4sD5K7vl89jl3eESG4xk9GraXM3UzJvFsO
	 /jp4nz//9cisGru8XNNpOAb+Qb4jxkR3qa0G2aUlYObtawvGnhOzgGYhG/HcJdWzFO
	 kaFVMA+XoUmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D78CD116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451377361.10060.10737055225447364669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39188adcabedf22ae8a70c1316613698a68ab2e3181455f2d988bece726769c8
Date: Sun, 30 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764513773
