Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42A33EF
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778628034; cv=none; b=udYCiXxNpcIGr81Zw1SNDUNBSjOnZjOcQpC06R/R9M4W9dl6BnDSXkhUhfWV4D3/c9NrvOfhKAUg5zMzPSaOTqBvHi1+R9PZsYzfrl9TSNlb4RfOnkOt1BXa4uacss+6O3E3P7QRA9DqtQK+3/YkbW2yrfWnrik80S7oJJmSZm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778628034; c=relaxed/simple;
	bh=O+U6N71xcSECJon9TSaB/VQRwDVXmPkJefq8OQcRbW0=;
	h=To:Subject:From:Message-Id:Date; b=Jj4uCYXbYtR45/QWe7ASoNYnriROQbd7Ebh8ouBdMpb+Jm4X9k1oQtsjJS3MJIgKZQ5f2g1etY+TEzFAGdbRXbbxWNwGdequjSUHEAZwGHoKbcJZ49SZBzmTeP7yFSzjZxDMpZNv+3ZaQlBZzlVMmytZ1GYtwKt/gJ9xGO6Qam4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTTivYbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTTivYbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF02AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628033;
	bh=O+U6N71xcSECJon9TSaB/VQRwDVXmPkJefq8OQcRbW0=;
	h=To:Subject:From:Date:From;
	b=PTTivYbgBWQfiOWtA5XtJqU5uCMSyRl7zoBs7fUHwpC9XCYT7DPXfR5BXzsw1QViA
	 /fn661G6qAko0PJKUdiDLFTyJrlkLrbAZ8gvbbWBqDJ7XwPibww9W33Mrqca5kMNAw
	 muLeahPFg5fn27EacBzt8a7MzGRGL3qd7DGB11b9FqJrFnsnxlnGeIt1hgBiGi1kE0
	 XELLV/7lXeS0B3cHE+yZGDaUupnqF/r9/CmO8AfCTfCLlpBimvHBhMQtGJosV4JCY4
	 keDJcfuJr/5Z4bmNo05k1UQmL1fynMKFxBJcQ9PDoRCrp5JDUCawa/b62LtEGqqRcc
	 OXs+4Bf45pLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B6CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862803369.25537.13311286580413683237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5379f79eacd04aae34ecfae7ccc651de6d18123bcebc27a7c104d1a684c87837
Date: Tue, 12 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778628033
