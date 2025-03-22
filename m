Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D0122FF35
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742654394; cv=none; b=jlbctx0Y9XTUCBOHmKJDNLLfZH5VafXhATsoAnS5uM+Qxy7wzGwuXtm6t7NhyutzT1Lb54RKYH9bZjFm5yCGOk0drn6SSIxvTD51fj4HxQnPCysfkIIcMHPzdHMSP4C6JkObSC8P+ljhIhY+yWWaQoin9osfOZ6qefJx1Z75YAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742654394; c=relaxed/simple;
	bh=38bzALyKdOD9vQUFV8sE9wV9MiagvGunBN8KcvkrFdk=;
	h=To:Subject:From:Message-Id:Date; b=RFcD9dvg+64CMTV/OUFB7+zzt2thyNrETMcRHH5K+1TW8OYAzynfsuiQ1JDGN74EiWkTNgSo6VnfHyVa1K7/6B5XmbiohWk/eERuL3Tmazr2LhgbXrNFYonWzOV/wE3wLTTP+upYBq5P0In9LnvTJMFANhLrjup2HeLrsd7PCqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3UiUTb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3UiUTb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F55C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742654393;
	bh=38bzALyKdOD9vQUFV8sE9wV9MiagvGunBN8KcvkrFdk=;
	h=To:Subject:From:Date:From;
	b=l3UiUTb4hUIdX4vfEjlwQ3BmCHMytc38uBGjPBAzYGfxzxRVN78NzeKKWU4e+nE/u
	 BIqcLiINmB45z8CBDIYtTxmFO/WHM226CId2p96Uw7LxUTut8USi41Z7HLUWTzO4sN
	 3oazBUsZl+n3bk5WBHaQVfrTaEkpaNPJmVtZBgMBfMogE4OeG2l1Q5/OIPo/6LShdY
	 lrLzcPGy0H1VOP5kie9gjN4IQNBh3sJWxRcraYeuM5mmqPuGRxLo1c/56PioyJ2T2F
	 TrxD8aUSxmsESwez5n1nLdpyW2YLBx+DGCWPndxZtA6hcSWl3cgK5qoHaRheRoHgsU
	 RjQeRgWI4sH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2724C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265439362.8752.12514931383723790126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6854e9b55f5a7b577bd31cc6b5c2b1b482e5d1c40023d83ec28cbfe406f714
Date: Sat, 22 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742654393
