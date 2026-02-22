Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DF51DDE5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771780494; cv=none; b=IDyW9MKpejdOP8gUY5qQ191zZqzl1CSqhIWF8T7g6lfJYigvmZWVjrVSYHOJR0stJ/uoqQ5jS4jbyr3b5GsK/ZsH/XX239GxIeXS1hkAvpCQfDLoV+exWvIrnbkgPI/Rf5xecFtf/idGmaYXj6GPVacnIEDXYBOvs3cXwl4QdNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771780494; c=relaxed/simple;
	bh=u2F/hUVF6U8wC+yzMgTLo+pwjawH8UAsUKlx59ctJyI=;
	h=To:Subject:From:Message-Id:Date; b=HuuULWg7tCcr1Iy9QPBTPmVxOkcitIbHlh70aDgW5oZEAigbGjcQ49E1L6LZJTnh3HSAbl+AO89b5o9TGRePI9Xnm4MLkTFII2rvfvvAlOOwnjfx4pYNhU04JMaMRSdipXqBofw3adQum/WLB68ptl0SX+Lvx6K1Qnf+/wVTFkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snraN+q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snraN+q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9555C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771780493;
	bh=u2F/hUVF6U8wC+yzMgTLo+pwjawH8UAsUKlx59ctJyI=;
	h=To:Subject:From:Date:From;
	b=snraN+q4XnzDc51cTHKfkfvzuTnlDhmBEpxQpsF3D/AGIJTZRUvBGUkWxTx8FQT9v
	 K/pcmW0AkeWXHJ40If0UJ0TMk3Cz1PqGvKFEMCR3rta1g0K+3SvYp5MZFQnHMrqAk2
	 XbVLDCXfK/DFdrmW7jZnWLrx05nt+5jDHc7e/Q/SjvlY1I7D6+2vIiHeR9bZUAzkAd
	 wLz0TZroUMTaDWGNDpRRVvg9CRctCrnMUTDVdBYOuNXIUGFh/cMn5B6E86R/wQzGm9
	 iPlj+c+79BCvS9MWUUkJs+pt7yk1ZIpMHa2VptOlzA32VKPn04jCNIV5OoDBF1xqch
	 hK/zzY9fKXJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDFC636A1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178049359.13408.1868061805365790141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdc83727603fb2eae9f524e96b3d94e7aa0c220b256fe8fe357fd7081872115
Date: Sun, 22 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771780493
