Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210361D7999
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760883594; cv=none; b=GLUGBuAaDoc6ry/hm3pbxh5QxRrbf4bYMijt7Y1wLVz4XQqSY+Xoy4RMOvmWryIeLDS3iAJ5R9gpqD2avbMOa8P/jBwYh9C+xV62WFq6qMC5au2sqKpUVOGmAnJ71+NUiitkSVSdmBxppX6jUYzU12r+TZY+6dVvgyqavCp2izQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760883594; c=relaxed/simple;
	bh=QMPBAAmEyHw6Ud7e1cBMPEyVq4GTA1sF0xaCIkqJCN0=;
	h=To:Subject:From:Message-Id:Date; b=p3SQnbXJS6Jlr/7c/ZJyFruA3+8J/1EhhPHdgFbYmvhz5PfsgJX5Tm6CRUrTD+RaUpDfn64IYQ2uSfKsscX7y4NraawFpN4y5VvOZeexKKB3YFt4HARbkpGtIV+FWqVmURJMCrpcqEPuUL0vNRU9HxS0+DQ/8txszp6TAspbMYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGAXYAde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGAXYAde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760883593;
	bh=QMPBAAmEyHw6Ud7e1cBMPEyVq4GTA1sF0xaCIkqJCN0=;
	h=To:Subject:From:Date:From;
	b=XGAXYAdeJtCCjIPtjjuR7sD8hgTlalBHUDpmeX/IL9st4fNAOY5IS6GpdNIK68Ovm
	 C2DNmvbhN+Xyy/GVhL/PVIKmwqVvoTPYPmPlPXeoB8YGCN/sy+rVb0ceQNXuNJAIJF
	 9cMnmHtO4ZiD3xA5Ninvm3aWula48fr032bbk5bunDsHcP7F+okbrxPhjVaWU+xXEr
	 14WCzFG3k1F15N4J6pMJH+ONVaOto4mkKMXb9DCiQyHhTp2KlZrNch3sSF1Msf1V0M
	 Jft/PnlbMY0cyxcYowbzCEnI7LByPFKnflXWUBWWkAcLUWZ3YDsYUQwntZtKOWnEeM
	 pO3VZEtVtSSYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088359358.15768.5538949052984848059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bd26c869c6e84321e4b66c62be484b56db369092c59e0d9d93981c965343fb
Date: Sun, 19 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760883593
