Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498F523A9B3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755346794; cv=none; b=oszvRNdn0JJ54gw0o/a/7seEfu4YsbiB+cRUyKEs2Ac26WrSfRhat1nrtCj5yCpFCVe5Tdg2SXkLYcaTUR5mExQ2jaaux6hsosJJ9ZWXzX6D5BjS5lHyhaHG7BJml0iebXcqpytx8tNQzqAnx9rCfnXm3HTymYlF2HrfhBnWmeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755346794; c=relaxed/simple;
	bh=WmZ3BU4Jh8k8JN0soWB52IVsknmwcpBdQ6u3MVG3QC8=;
	h=To:Subject:From:Message-Id:Date; b=NszO2TgNrNqDjskByvgf05yEIJtOSbcCOCjKJJRO5Zb/W0c4L+esE2kyRbqLl4iVWcyVXZElQxzjjO7wUkf2xUGPrGUtavVMten7b9PhKbJVjh8bwb5UMUYLTXx+4BNLxs17lodZD1UlKA9PLvdXc/tD5mnDUpTcz1Fq0dDpWBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnAyjdOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnAyjdOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A637CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755346793;
	bh=WmZ3BU4Jh8k8JN0soWB52IVsknmwcpBdQ6u3MVG3QC8=;
	h=To:Subject:From:Date:From;
	b=LnAyjdOPhhcK6gfgGiZy9Km6J447hZkM1kB5Noq7/kd01qInwIhOaICnRGCMTK3Wt
	 +Nz5LmH7ac1xEAIYg5IgUuyJAW5bE6wwRaUjsqgdbhjMzFCkPNTy/5ibYEYg5nQw2W
	 3QpIo2514eADYQfpCop7lyODJPeA1XKiM/hjYFsD/uUlUgPEhwt4RW0BQ2qqqD6I9+
	 iL3jwg1tnxYeARlSu+/tpYadC3mMs+nzEtSbiZfqrGkS7FA2O6lFggAhMT2DkGFCi7
	 RcNrpByh93uFotec+PWQe5mc8Lwcr8l1CuC1fynz/jnUCFJCzJjtoi9/KzNpSheBQ0
	 sIHLhWbj5CDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E06CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534679357.2946.2958650824606833333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fa13b547eb49325a23a50a1f3966852d1f4978942d5b2d69aa685f18927da8
Date: Sat, 16 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755346793
