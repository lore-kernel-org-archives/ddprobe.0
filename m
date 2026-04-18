Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078C01D5CD1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776473854; cv=none; b=jODB2MhepCjejIPFqRLTRKbz1Dclg46qrlT0Fx6a3hgFjQmD4UA9LkRBCjCxaz5MGB/ljh5A/M0xlYfCvqu9mFftkdKKbXFW2SBCT0U0LQRQ7YQJTjhArlJVmnIen8ne6b3PkVzXxTW3QJHj+sarEui5cRW+20hgjpWx/UPU2LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776473854; c=relaxed/simple;
	bh=bLaiSKbNeqOiAZboYHtkVv8XwrKu/kWKrLKIzuGXKlc=;
	h=To:Subject:From:Message-Id:Date; b=UkUi45Wdn88Q4QEVzMyr4iQPMTqTTZuBJLON/HcariUW0UH/lMvQyXqX3bsmD6HiWoAD9NFxcJttxyEIPjNdgXOSABK65ApA71I4iCQ1NCqv/++ishd4QSxtNqN7qKA3r8Qw8Ya2TqrG1g2wvDa3E0xUNUUH88kyC4tm9nKl+Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4NhMi2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4NhMi2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2603C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776473853;
	bh=bLaiSKbNeqOiAZboYHtkVv8XwrKu/kWKrLKIzuGXKlc=;
	h=To:Subject:From:Date:From;
	b=t4NhMi2U79SLSIuKxA+XERPZ5C6K5Od4MsG0r6brhxT8OqbOqKN1gysbSzQWNGcnu
	 0Jg7rpRkFWfU0d4t0hBiC9IxoalL7oLWvBv9ZOLqZXf+88AA4JKiSOJrE5j3U+QoYa
	 VhD0uiYLMzCNo7vXSSqiRa+QsibErJ7QaWDbC9cQgMJKn8+Bq1k6SCtPUcuNHFiRFQ
	 V8c1A4mHFX74h1ERkIyvFEHJXSOOIG+eu8gi6s/jbiG8iN4i1SVLVi/JMlvr+eRjQh
	 HlUmk9G1iDI68dc+Vj1GRuOGKUB3i4F5D9wvkB422tNoJAch61RvE92tGJAXy+NFso
	 T5QtuSCBk62kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01AF99C6E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647385368.9433.7499456480934387527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04998476562c987300a246b173339d8899185963edf2fb5107cab9a8af73c5bd
Date: Sat, 18 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776473853
