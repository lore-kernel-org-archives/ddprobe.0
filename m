Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF12D060B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776837454; cv=none; b=QbSpvvJ6tZFL7/IpqgsDrOVeGmDN0t/CWVVqjE6JHiJQDSCbsxrZ2TK7b1udfr2ZQDAbKH/mho/sAQXQ8sB6FH78cjTb8sNG9QYnZ2nFOo3oPe8GEcr8q+Ou3boVbhPrrYpBMwZ4MMg8KDJY084v4rdkGgsF8olZF2Kl/BsrwVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776837454; c=relaxed/simple;
	bh=Z6S7f8vcCKj3T+xAtwdIY1e2VArp/IWOAaqbodwtXkQ=;
	h=To:Subject:From:Message-Id:Date; b=oRbK2HronUKLo8uTWqtijR8oisCjH3NJBpTeDMPpd9xtDkbgKiDiP7p4wQSDdlNSLGevFgNCR7cUbubo5DH5HW1QT2P79H9bkNlMbfYW9IW2Afez+dM2dWAsPzpCAR7EE5et/ZcDnKJpL+X/gqPdcEvY/BHHAQ2eUZcRqqZnWTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7j3LW1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7j3LW1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA840C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776837453;
	bh=Z6S7f8vcCKj3T+xAtwdIY1e2VArp/IWOAaqbodwtXkQ=;
	h=To:Subject:From:Date:From;
	b=a7j3LW1dKtOv6xVdPKRnMIkQuv4Ne3T9Y4OKMZtIzPcOyFRnsfVOJS/Q2PyKIiS7N
	 ziNXnW2Xa6bS9Hzvm1IXwA6ZWFEUM1AeXuRyW043zTGWTBRFrS/zoeR5B2Zb7l3/gN
	 IPS53uYn8Kmdpa7XlAgnJcXpIwmnqPn8JiuT+wGYjXCL6uYMaEuKft31TiTLOSOTVS
	 msex3L1s9Q5LTUC64YOJvf6PgAPu7N2y0Ji9khzwccEL1ASceOtCMjxlTN/XkPufPA
	 e/ErKqBHAMRozHFAL4wJgLBrNJ9+G7/uJk3at9mqFl2SwHQdUxocAS0h6/sCw87ueh
	 KO5BIzTAJyqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93E3F94CC3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683745374.10276.9629737799942970511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e225896d024b79fc4fbfa87e3b56dcd88585d95c90ca70c917db53f2800251d
Date: Wed, 22 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776837453
