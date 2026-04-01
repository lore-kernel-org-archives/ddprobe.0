Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2AE1AE877
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775041534; cv=none; b=u1zmRmj255GcyWgA50GAHI/V6Z60gGIbWMA/8M7RJj5uVIN7QHgrFoYpgwm9PbUvoWXCzyKD7G+B0h/q63TffY8+iElOuVGfvJhgGoTehEu+FuHgErIrl9QbBbFTO4xRxpgF9pXcwf2QhEj2iNcaCFi4a1hfdkAHskck1BwhSL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775041534; c=relaxed/simple;
	bh=FBeZ+eS4YxAEwGjQLhAVJxxgoKZLPqoRGFuJQblOzXo=;
	h=To:Subject:From:Message-Id:Date; b=hjtXq/SgAzE2Clk9Zw1Is+z0L4022m1rJtWULM9EhmzR297FD5KRKniiQGPXjfKtit9j1MhEpKuTT19Zsy/30vGdoEZ2XfgY9VaBRYGMHR9VHWOfPUewXs3Hq2EMQDTtNkMeWyf0h8tgehkwj10CmYP2bTcVHKKJO4/xapwgOSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIEoJa8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIEoJa8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34CEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775041533;
	bh=FBeZ+eS4YxAEwGjQLhAVJxxgoKZLPqoRGFuJQblOzXo=;
	h=To:Subject:From:Date:From;
	b=rIEoJa8QMas1meRCYrtAZcS8qxaqenX157Hk4R24joPL2DG+rCHW2g9NqX/OBmtRx
	 SDtDSullSulj66dSswjgf7ZwYZ68WZPAQ1zIALGDcDD2V84fPREbutmUqVGf45HBFx
	 JzBxuR1kD4ATBptNivrorlD6tqJHt5MuKT5ptpceARrd1GeD3w/gPU3E/8OfZLpLoS
	 0v/RODQ/KmRuEYxTcboiIHnfdM2ZFi6IczEJUn/qSGh1/9wEXZS+aWqGQu4Xf3f7xx
	 Hf50Kmhi2N0NBWMArRa1wtTyt8rvytVohi4ooRiaRlDgRKUpz2j6bKFb8+Ubo83CM/
	 HAVXOhb3FAYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0D4D35171
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504153373.9735.9388825556724529946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1f723a534c2467db2437b7c71fa72644bd016751114e6dde0a28806004fb46
Date: Wed, 01 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775041533
