Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2738539768C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778421634; cv=none; b=VnEiuE2fVf/XDSEo0R3YmEfHS63kioy9YHSdqwiB2E1rfUr9sENk8/iHuya5MDrVOuT0ZFhMWKSDtkRfzSuxLexn4W48tlGm9ii1xSY0i/EydGYyN1px8bPr4Ku6/PIRuZeq0l8P+N+cO10vKsbdmmicX/6Pg45OEaVxcAq2ByM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778421634; c=relaxed/simple;
	bh=DY3e84FAEy0CY2oM5GjnogGVs9pdLwUpU9vKAOAT0BU=;
	h=To:Subject:From:Message-Id:Date; b=ipydnEyKrRpZHi/FMsw5Bx3ZaCGXAACJwFcR+DJT66doqLttwlDa5M/CCCQ9YkCpf73P1hmGt1D64ZarN7vg3MIgAedwUvJBol5WjXAntuCyGEdV5CikWFYtyY6dnJSqtIRlmsvJB3nr1QZb4P3JlA0rx+6JqX731Dh38zCxRh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6eXq/vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6eXq/vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB663C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778421633;
	bh=DY3e84FAEy0CY2oM5GjnogGVs9pdLwUpU9vKAOAT0BU=;
	h=To:Subject:From:Date:From;
	b=R6eXq/vWf0MO4zjfuTZrr1kLt/r8mWkkdhJcVTHAEr05O0jJa1B+zUmcL8gLQCsyp
	 PEQwZm8/PW3Q7f3wRffieAsfpMlN2IIHLPvRPpG8Bg9MfsrTZ2X2ioDwsbjAEyfrpf
	 YSj67YEAbSLI6iDOkVtiu7IPQLOWwjFxlMYH49O0NAFyOBRuM4wY8ejsFw+n0o/lGl
	 9UfVELxjyx2JuIvG2fIfCm8y0T+5u4t3NL95IFJYynWNcf2LxmsLLqpipZS0SmIFSo
	 pgobW+SPp3nVi0QV4BeEH3yx+S9JggVV/VNu4yvK/8rVVLt34XXCs4+aVEsf1qV4nS
	 JPrhy9G5V/p4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B659CCD37BC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842163372.30506.14582710381672854864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7896df507df599cf984d9e5e02d03511bf34f3e9ec9fcd0501bff2ca9b5b3ee
Date: Sun, 10 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778421633
