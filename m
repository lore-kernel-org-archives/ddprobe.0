Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642C4182
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738437354; cv=none; b=adhn19hb4zGd2yZolpBtTtz4uVW/EHUiIQWcU8ENeJqVLe/rK3Pn4ECWq1XrXplUmJcZ/l/mqtSaCARq6AeAAnPD7pA2nNg6sDWGOArfKXNwS450Pa3p67X9rTRJgZLvcpfm7kHTFRdXW/Dq8vBHjZp/eDNt5CyoCruLqe82dfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738437354; c=relaxed/simple;
	bh=ZUNqB0YOY+XmGVHXv36nKrc39pMMMX1gJDZoV3tY0H0=;
	h=To:Subject:From:Message-Id:Date; b=jDxBpKj7hXU3zbsZhrKDow2Eom1Nhot6OsZzQrmwUcATXWtYY0WdRrpdB7bnY8BCob/4kdIQ9BmAHd9XzOidlr1cMyqXFq2RBHxvyiCO98pAc1DZqY6/MhESZ5yVGE+1XGGd68cbMTX5Td2R8ZhEaArjrLcevIBvjLXY1si0UBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P94o4lDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P94o4lDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79F4C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738437353;
	bh=ZUNqB0YOY+XmGVHXv36nKrc39pMMMX1gJDZoV3tY0H0=;
	h=To:Subject:From:Date:From;
	b=P94o4lDgxce85r5/F43Tt9AjY37vIoumgmTxE09ZQS2czewM+sg5/8KkdVVi69u8l
	 ayhOEZyDV2ovWKd+MLNdXBOJFfOa3xRYNhfz6pvrfrdXdjKcnxbDcd8b6j6/pnvf8q
	 30A2UxFMcPJAho1hHVXbuwUx9UR6hvgJkSBpU5xNNlAKX1AhV3G4VNalVMOWCXkkVm
	 eTQUx52Fn4zaDcxptZ6VjH/BBJVIdjt03eOoFTo/hQsxrQWwAD56adgW6SlBC58OXt
	 0KyItkor8ad4gl08wcnB4/WdTy+V7DOKFbTLanC1EvJYglvK9+sJTjQQ3dwvNWlsj7
	 VqqWytpkhJfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C57C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843735369.5470.3327964524784774472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798eea5c2e6d1ee292ebfcca38d16a51053312894ced0c5a9977b11e65bd2f25
Date: Sat, 01 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738437353
