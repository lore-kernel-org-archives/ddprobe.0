Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475D620309
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727152554; cv=none; b=FGvViIut0PuRcZw4yI9m0aF6Vx2iY8HMV/lV0HexMBkADgsU+lhlmvd3Fm3LwpjCN87/c0mHm0z7g08J6rn9LwZN/k71Pb5Q+YAVL/DhKztWrSYmJJBgbnzKOPdNL9JDkPF+/WZRkIpCUdvTUOXrFG54alS8hI4HfUOns/El5Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727152554; c=relaxed/simple;
	bh=aRk5f+VGNL0d3ISeQaR1Pc/9Sk5vrDq45tzbqOGoI3U=;
	h=To:Subject:From:Message-Id:Date; b=Ij5vlhTcQEecN2a3ol3OuaVchFMTCAKMeWhAHo44iflp3lgYvtFmyfV33zXQ/KsbIXlDydG4c5axlwVfdjXZOIME8hoxU6h3J2iIYKCt+ADYhjfGextVTlWwlXkyl2jvXNHDmx9srBeBCln9Vk+M6S4xcQByQMKBESOLfEscmXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv2r9g9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv2r9g9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19AFC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727152553;
	bh=aRk5f+VGNL0d3ISeQaR1Pc/9Sk5vrDq45tzbqOGoI3U=;
	h=To:Subject:From:Date:From;
	b=Cv2r9g9cD20mkUGSiiIRyHqfcnf3+2KjWAYEM1q1+Ko3Ob8ruz/hycb4crCZC4xdf
	 Gx2MgQZMQr9vh3V3aBR04OK+vdVvxkxjgG/zLS3RVymF4KKwyec3nI7SiJQCpS2Z/M
	 J5wggHahZ25ARa4HavtS3HhjnjaAyDt6Zw2q0HV7616+cvHOe+O9qDj3gEu03mrCYm
	 JWYfKCi1sZWx3bQdkEvnU0sW32Icf+O2g9IVqm+Ou8UsoLm205lsnRqQKimxxteE+F
	 UJPu216UhDcXmOEp885OPjTu6qsh6Upd+DYskjilajo0QJvZkYldQnBPwojJOkobe+
	 sUf+cjlXv4YSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72A9CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715255365.23312.10943101364564505509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb21326fb0748a928e1994a108d712dbfc07ecedb4ad974c127a794ac1be899
Date: Tue, 24 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727152553
