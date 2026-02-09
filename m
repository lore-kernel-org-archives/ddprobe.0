Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF5F2DCBFA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770617634; cv=none; b=cGRCye6WIIMtwhytqxruBwu1mugzbQwW89d2H7BO3ggwAJT1V/LFc6gpcyCoaL/80f1G0N+f5t1AplX8I9x32uASmXVao+Ei6/lCeGNkOhVG0YN/ulhy5UUIhhA+RRSHpS0Csgnptqj+hIrysc6Lkg2VdpFVqEUEJWNiKWGhxbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770617634; c=relaxed/simple;
	bh=abOPEOH186O7s27ll52a+dQlCrIr9X0vRDtwUUtzr8Y=;
	h=To:Subject:From:Message-Id:Date; b=YTMsI/PsqTTeQrCu+yKOdR0Izw/XbswcNzkCZ+5odgRrE4WPKiw6FMTBAHK3F83UtrVGhxp1nm+pa0PtW1V4Ji+W5zSO7eUEEWFd1jmEQ9UgscXq07kkqX8P8H58dpburyvacoJ/sfE/IhofQR8Je9JQ51nG1ReaYPty0fzGFyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/kBHZCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/kBHZCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B475EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770617633;
	bh=abOPEOH186O7s27ll52a+dQlCrIr9X0vRDtwUUtzr8Y=;
	h=To:Subject:From:Date:From;
	b=l/kBHZCcvcV8JMUv4ateGJrpKtWLvAjI2MgKXl3o38jl7JiVriIKnSPJkPY3fvMy/
	 zOF8L8X5upKxZiWtE8p5vPa2qyKELnLOspVwGA6AAYJU5EJ6VN4J4l+dFD7AHXTqyA
	 1LbAF1HondHho3jri9nYgqFsBXY63xJFnuf0w0Bpv7/3C915NP86o59gnuokDh1kp8
	 +LhrAA8Ay4s2OAtSPDxir9vPj8dyD71N/R1nnYurjbLCdHKZ5DxlRSNHB7bGZggLXP
	 CyyJAhpYw3CzMJjuVOxSr4cAj8Dvkm81dP6YrwJQaAU5rdJVqJW86kfqTitF7/U3GJ
	 v02zJkX/GO54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DAEF070F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061763358.5051.11052513527337598861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f13fdd1dc9821caab09ccca21df4a4c4c0ea67ed6d1c5e8ba2582ad3e394859
Date: Mon, 09 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770617633
