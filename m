Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4303E146A76
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721429754; cv=none; b=kn0CGUYs7UqBWV2QRiKX1PbsmqnNQ5wyTrAeJ4hKTq0jE5MBCQx61pVbk80QnrcezCI+NDvuhh0G4JAJlOKNfMJon5/sUX5yCdkGszDbF6cdiR4tMeKg/QjTt1b74dTupVwh2SjdAqrpu7E26uRTaCh1HTpUC6UpDTSu1MW/eMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721429754; c=relaxed/simple;
	bh=nW8at/XYizAKhsib/MI+V7nEsIHQvnyQ5uRq4fPFrBI=;
	h=To:Subject:From:Message-Id:Date; b=bDSJiWR+/eyQOMULgnvUrMl89g5+lTofBcSJdHDCsPQlS7DilbjWqZ7vVTz1j3IH3Vh9xg/GvvxC6eihcqBHXIRe6L7yFCZ8LpWl1EgeCexXxyB2MabX3MjXsdBfU03bet/uFgMB26rdmrjrVVZ+jaa7Mb48NDkMBMdeY1la0pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlCmVUeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlCmVUeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE60BC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721429753;
	bh=nW8at/XYizAKhsib/MI+V7nEsIHQvnyQ5uRq4fPFrBI=;
	h=To:Subject:From:Date:From;
	b=XlCmVUeZmxciz+FbJEoG03q8LwrB4QkxJvrVEtF4YHsMtF9QL/DD0PFTM3vXc4QL2
	 2GkRUHLvB7dhlYkaBzEXw/QLRP8Desco63YhyhF8DQQtFShNKWASlhDqLE1/fbslB9
	 iMOc7L5Lji+1Vjr1TDBOTMQzuJM+FgKDaNemYQg+8SR85PuJrqyBEub/hh7V2Mz8GR
	 wQx7ZDUla/DFRwgJmUtPK5j+TihfaslC1zNz4O1Ypa6zNSuFBIm7tY7nM8cCf8lLUv
	 r8R13490msqOqHeSNizva0SdYmADfIz3VRZZG78WEj1KKS4FwFjKSIoKFtukgRw5+X
	 IYnWFE87rt+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D1C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142975360.25609.3957048379027988427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a854e76994049e6783fb2cb3bbcfad79f71c18849016b456a120a74985ba905b
Date: Fri, 19 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721429753
