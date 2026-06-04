Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D0B3DE42D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780557874; cv=none; b=CJJpCNAhZl9hhNAz5y8czsiFhOpneRDbsHMiiEgnxbZdiACrNFC6ZKM+T5OW3zokJR0QN2mY7Uy4pNciIFi6tZBMFsSlCyq8ZlVURsGvcPdvUeaE0qaFclVZBNl/Nb0+RtCRhXVX3cSF384KF4EnC7BLdtM/UcotiMty0rH/ZUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780557874; c=relaxed/simple;
	bh=6sgqdg6B9zv/A6Xk6bgrnspVB1dpSdv3W22KLpaeNXk=;
	h=To:Subject:From:Message-Id:Date; b=CZ9R7Qgx8yLdspqsAhuDLLZrTBdRhfFF7M2AT0UICrpKzSQMwRnP7ivSffMC7vOWT6+LvSCDC5nwnh5aE7FGQ0t6JbaJwOpxvk4wN/LDH+u6bn5hxg9iJTwQ7NtahT7VSw4DxnZ8ofbPhvhoCCnkhBTIZNPyWqB3Wy7AzEhiAQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjOR39G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjOR39G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13B4C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780557873;
	bh=6sgqdg6B9zv/A6Xk6bgrnspVB1dpSdv3W22KLpaeNXk=;
	h=To:Subject:From:Date:From;
	b=rjOR39G6OQ0gQfv83zOq+UlwD4csHP7lDrePgAFIHhyV2x7wbx9xpA3t7/xg1IlaG
	 aScPDKJi/m2DwymBs3R52oTdSfipCXH5W1bEhmlK4oAV+M0ctbd+Mjw+yP9mluY1tn
	 7wJy94hOQeJkfaG5+KWyp9+hJ8se/k++nNSTp62Cq/Y7m/MJQQc/zoIutYVej8C/Ej
	 +vUSHeouFWGWbge/knUkn1QVXZ1AA6+S4/F/8cM6j9WfVaVbpAzpBuVlmT325NE+I3
	 pJ4ktIZTD4PeRsZmoe1ZsbUCwKeoXwKwjatI1ftSUFYWHJxM+2Vft7UeIOerRNsXiJ
	 YWJTbCRGXEN+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94BFCD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055787368.29514.5400139829547582505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495545b04fbdb7aa783949a4499a2829cb63a60cd35a3ef64ff7f198be081576
Date: Thu, 04 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780557873
