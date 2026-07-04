Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E67D38331C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783202914; cv=none; b=bM7kNycY/BqubX/91PhSA01B7A9TkaqsqWOs/i8hnK3IX59kuuW4e/YPn6k7myiBLmCwhv6IO3+UAisDXYYsn7CP23hkEBYNfYa2c7BYhM8LBwJBT37bBbosMqgsMW3vbEPXFTv9jN99wyRdBAoqhhiaaW+L6fkHjIknDa6Cvio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783202914; c=relaxed/simple;
	bh=GWHuyW1PtNvwSMBAiwGx60c3LEPThAyqH+7jAKd4PXc=;
	h=To:Subject:From:Message-Id:Date; b=FNrv8Ueb6AIPoUi22Vms1COG1SjQul9u2SRDYd/s6tASBRCuiO01vldpNJh4tXt/sk9JqpZTUKwE43sDPJz9zALFiC/RuU35NvF3Xp474w9wJT2SxQQdHXXk9mqbdmjxsMr2LmXBMpazqMp7PZ0YrtGz/q/qL5YKLo7ncitn68k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/+xv09y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/+xv09y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9676C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783202913;
	bh=GWHuyW1PtNvwSMBAiwGx60c3LEPThAyqH+7jAKd4PXc=;
	h=To:Subject:From:Date:From;
	b=f/+xv09yPX4V4xSwbocEH3VZrZSe8u1EVlV3Y0b9RD8rimFG6vffjzPkPYQ0WJuA8
	 VzgOJaVJVF7cFo6l+LF/mKZBtkoQqPZIBF3Xq2jgv5dB7iwlS5pMJGrJK45sfFaYsM
	 zTwSW1hOmxr01RtokJFQD1mx+7VeJ23OIHXBBIEfrUDOqVnNdgrVJeDHozAIaAiH5f
	 +wdNdABbtc7CjSAh+T3RGgUxSULYMrMfrgTFkRv1XRBxgVZg6QyvT4nB1IxUU8t26P
	 teCPXjc4keyKVh1lhOoKP3AnTddAI9yioOYLesrq1ddr4lzoye7ea4ThWGbd+HcTOt
	 ur8C3Ce1+XEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92ACC44500
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320291368.19876.2617625067539838771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee8c48aa3082cf562963dcba921f76a66c1ab6e73563b20082a75443ce97224
Date: Sat, 04 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783202913
