Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D3E39151C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776383854; cv=none; b=K7cZD5PRNvJcFSaWNSDw5iwbaQd4mIU2QAZQMpFZHYbk7MkzLAwxh9eO9Nmu3yKQXtUOihDgG9+TUe5d2sYvfZj1u1N+G6ww2rER/fufJ09sEig780a/3+j+yPGSMglymnRRrKq49SDsfobIT4pyGHBRXFyuNhhFOvKiDSjZ/jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776383854; c=relaxed/simple;
	bh=iCSo7+8nfSajV22dQPXmpuiLUysXfkg3YwX8wacUPkQ=;
	h=To:Subject:From:Message-Id:Date; b=eKUixB58deQdaMOPVrBXgNWnZ8hc2cOMr/XlHBMReGq/MJP063M+quP8FNn4ECVt5tRuhpGQWwOpRtiTj8f2tX2ktxOIiq2o4joDrrWRFScf/oTqiEG8My45PjtLXVJ3dWKsHWAaEV2TAaGcJcNEJTEX0HC0GM+oIklHQLcfaSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4SAn8Q9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4SAn8Q9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E58C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776383853;
	bh=iCSo7+8nfSajV22dQPXmpuiLUysXfkg3YwX8wacUPkQ=;
	h=To:Subject:From:Date:From;
	b=H4SAn8Q97+08Eu1GlKOMFLJMjuRA6i/1/lVIYnN8cKd2u4C53kFHFtlq1ebhb/x+d
	 cWWkni0MJPs+Y8Z9L7mnNjym8MOrBrH+i1gM9VebrWgWMRFZXwI3tmGF/oiF8Xzg2F
	 lZ0FUuEPN7wJ0FwYHhh5USV3yfn8KbQACvtEy09XOCdTXytiVHxx0KlDkCrSOUWuTY
	 SnEFK78UN0nCMDGDTTZ+OSfWkqDwR1RiyBBep3/zdqH2UKCqNS0gp65YeEik9U/yKt
	 Yf8LCumQz2ix1hqKC2oZh8VbkadcF6N1j1EY8pRs0XPjsKuaHNJdjvx7ft461xYL3D
	 0SSEV4AHUccZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9178F8E497
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638385368.22822.9543206497702313681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9ca41a7866961b29f2cf7fdbcbce138546b935271f337788c6aa4ba69ebec1
Date: Thu, 16 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776383853
