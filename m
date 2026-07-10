Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D703B14A2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783665514; cv=none; b=nNQYV8GzGaVrJ8oZBC/H4Juex05n/Xr1GwNrKTGFbXNeBsaLIYsXwuMSlTHSpHl7V8OwO9JdHcmoGQQ/cvfBSNaVxE7Wwp2dt2j3ogt0asuuEVUyNRG9h6llBnOfX287w+PmntfMbG0NSSOiYbT3svb5RlSwvLkCJtVOv4qFMlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783665514; c=relaxed/simple;
	bh=2YCwE0mEb8gq/KT9R8mcuae0MaWG1BxbfaMybp2mqJQ=;
	h=To:Subject:From:Message-Id:Date; b=HGAvYY2+EQoMe+QeaAdw+Mvn1Vbm8nLBPvpHWlFosTBcX4h2XaulHgxFQIKJeyRtqTV/CcHygafTZH8XeUZWh9aaUC3t/n9htPVYZvsMRRQBb5/bf7IQ1/Ypy/nuGAYED1KBkA2+wEsnW9wzEtCXy4AcK8mqZB25r60YbXtX5No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAOJqk8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAOJqk8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA531C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783665513;
	bh=2YCwE0mEb8gq/KT9R8mcuae0MaWG1BxbfaMybp2mqJQ=;
	h=To:Subject:From:Date:From;
	b=bAOJqk8fSKKkQQ6UpA/fgQOhLgnaHnGAYf8GWql5iXvzjJomSIPUUuHTAtM4vL1pp
	 C2IyITMP1HnNS0OHeloGyM0vnmBBetxxwX8/i7a+yAacdich+YKZe0Y2qUD5xy23Aa
	 iC3oZ15/Xhs574pnYRSPN1TOtZ8rR/gNJC0zkqVL8+p7CxpTiK5KT2bLaAfBbvEQTl
	 h1qNx5wyxsK2fvUL8UU9m/fzbo4KrmIsjEgM2i+h14uOxKRbIpzBu7e+JUoZApn1mB
	 UpmWZr4qp5C+/YhwkyogjxiGzE2zo3McEsPInsoW9S65c/8ULlkWkSPqaG066Ul2FF
	 sFqWOJ6wimkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366551369.14484.21037949776212390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7131a7600a8ccca061f073d5bbeb4183081631bf0818dcbbcd67875f94da71f8
Date: Fri, 10 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783665513
