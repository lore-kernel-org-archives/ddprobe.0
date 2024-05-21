Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540396A8A6
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716279743; cv=none; b=L5LJhOZMshOskneguVxGKTpUDtdYn07um2tPODBteY083i3LXk69+5nQ4+OqkPpyZHuhv+fdjVyF42JYo/d6tININrw+MJNTem9Tm1B8gk8ZK12EhbZ+/BpglSpScQ963S/aBPVVcSY7ksyqdMZZ9HPV8ZHixZK/bHr4tEtqn38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716279743; c=relaxed/simple;
	bh=y+uAKEPNq2hMPofzaYJjkJ1p3aKysHW/HAS9OQzEcv8=;
	h=To:Subject:From:Message-Id:Date; b=fjHVj5qcNExR82m9wJIGttEL0zC9mJkp87g1I9jVoK5ut4QQoFHWlbhmuCg4o8v8AHG5I64HQVHudyn1HxhUtx1VlDNbhRcq/96F05pOG2qxSi+xKG8OiRajXu3Mqw1VS69GN8AaUABE8+Mpb3UB+hjgxTaFyQzCqJdehsMk6M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3nJvEsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3nJvEsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10B4C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716279742;
	bh=y+uAKEPNq2hMPofzaYJjkJ1p3aKysHW/HAS9OQzEcv8=;
	h=To:Subject:From:Date:From;
	b=h3nJvEsRlRqX9yNHTD4Csf897t4QAC1GiemEzOzCN+TOsWV05DFm20a89QiBG73Zp
	 q3H9KPhjQuQ+1JwMCnIvCXASvHUtKU4IsYycYfE7aJLM9f+b6E3wNLMP+M0SwHP4/X
	 DSl5kMOSnUJIagRQX/uat3dRd3wDE8C3+hg3X47sP5sk/EYeU3Eob3UYVCDLo6VZz3
	 1romXEe2thYaJzGoprYkbvCyot5CemL4Kkanla5CFAo2iVMJ206Ug+MDECKm+QvdKS
	 z2++/jmOe8eab3fr2mrOPc7eK6h0pZsxznXuH82v4TbfFo//IqutUKdDiWxp7j4h+0
	 Zp1Mh0pwv20ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB6FC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627974276.28697.16329041520727418163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af58a3587b4fc793f0f72d00b2b0d8b551a4b649ca05614718dec0e42aabaf
Date: Tue, 21 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716279742
