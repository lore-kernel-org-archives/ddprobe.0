Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA72C15AE
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756890594; cv=none; b=RLJMvpkKfLudaQChpnGq1X+cq/7tQrm2jSb2skjEiB6wWsq9ejEtUaIBbl7uX884xOC8hnnF4RLtztB/uLzItYl+2FmIvRnHTXbmBbNd+Dc3ukZ6J6rnAuWXcFXaDQ2ThU7ngGSbni8dNBeGxsZHydwD20Ko/ZhisNfgL3nUejI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756890594; c=relaxed/simple;
	bh=oTa/LfSs7BAdd8Xym44qxVvN3P/miSo6NcZ7bbMHqpM=;
	h=To:Subject:From:Message-Id:Date; b=KJiSA/zEYjf1ectxFzNx9aHdIPpLgg6XZNx39olcaeMXpHhhlWJXZZkuBEW0Fg6ZeBvNkWaFGEpeoH6SRIW99dJxPpu7KkfsaZZxo4/w+7ZZduQqRTeGk7zx/8LwES2bDCZQbUMEDb6X8UpL67gWlKGT+DlV8FgV6BrkjSuevFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLW2jBin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLW2jBin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2D9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756890593;
	bh=oTa/LfSs7BAdd8Xym44qxVvN3P/miSo6NcZ7bbMHqpM=;
	h=To:Subject:From:Date:From;
	b=WLW2jBinI9LHg/Ksd51GcUyF0bVmhFxo+pzYuV1ItCoAVZD1lm63NOxwo2gJzYGTL
	 G2Mldix6guETl5YwvUDrdgE5ZUOLptRuZUTusHXisXKTH7WahiImPeR5jFYHeKXKyb
	 5VbLulPpwjnoWP1MSL/tWbUn8BwcYNA3DJgI2f2AjX8s2jOxpi5EljFOB1Kcd4q7kW
	 da5oP/hmP017amRd4UUz0q/BoH9q/4XFsDS2NqT4/8dWNZ5SUARvYP8IbJSIAxtOUS
	 /RFU5ff4G3o1SfA1PFZfjZtiWIoPeuf5j/9nKcmh4/YerkuVkptezibyVFwIr/drlS
	 fZBZwqNWmgFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A6ECA100C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689059360.32732.11372530730581010530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0276779a727355b662a46b616b3ac358d462475477f125efde366b5afc3a835e
Date: Wed, 03 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756890593
