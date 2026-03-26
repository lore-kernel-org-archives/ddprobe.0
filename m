Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DE3537F7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774502094; cv=none; b=RAYMSO+PlBt0NuiUj5qsiHAtpvtYiOrmtbWOJpO3lOrwBv9uMJm4xqHCSb9T2yJdexChAlu8F3JOWfu/CrIIj7xO74srwztvQhjqHkSRtt2NROXbqj5QU5G0xLgsq6Z3dRuVh1YvIn1JjQp4UDkYi1NmKp71bLjaoM5/rDvnYVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774502094; c=relaxed/simple;
	bh=fH0LMdhlc0RoxGokzH9HHZI2mzgPnqF7y0buz+qfH/Q=;
	h=To:Subject:From:Message-Id:Date; b=bu1dSYxdynZaN+38Mw0mZPmd7IuB+JR2qECDuuXpQQSJM1xIOqTSePR+bfglxzkI2j48EWtLO25ivFH96/OCwxr8KnPmDulJK7iOS3SoqKecS6FhJLd91wuwudxF+M4/4Zi1Cy/vgHGSIUUCPESoJ1LwPOdGetUy0jqh+qYDw3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5ZUBd3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5ZUBd3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF634C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774502093;
	bh=fH0LMdhlc0RoxGokzH9HHZI2mzgPnqF7y0buz+qfH/Q=;
	h=To:Subject:From:Date:From;
	b=Y5ZUBd3jFKkbL2cS3N7WuTvYhOuiLAgS6sLskjY/KS85YrzuECDiqGZfrw7Y71bKV
	 Q1kIqD+4aW7dqCMO5trD3z7ZcbNZyYlPRpKXEc0A1AQkfIdNaAGPmElp+C+aUU38g/
	 kboAjUX+XsGEba1TsmXyqZdTuj+FgbEZM5vdpXFmpQmRUrDZk6CFyq+1T3yW8JgDaP
	 9GE2Pd41vtBZ3pkMBOx9u4SICer9wIKJbkOJSYf76xIbOLlLikFZeUlO2RZ7oQFgwE
	 7jHenvn0gVlHh4XLtUwzKa+Y2tZUf6skRjX19kBoEj1J2981Tt6zkb9OaOprpuUN4x
	 jhIlZJWgjsS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0605109E54F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450209363.26478.15515432777490638088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b30eb1ca1f3b1e9da154f8cb8d0c1a9bc90c640f63a5b2e977a3e49b19ffbd
Date: Thu, 26 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774502093
