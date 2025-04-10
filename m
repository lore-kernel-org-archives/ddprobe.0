Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36F28134D
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744282796; cv=none; b=En1hBkpLoH14lAspV+6GzzLIeXRXqRRmeMs6PA1ZquZGeQMFU3C5JWKTGKn+Zf+7tUx9CwngxCl9Cy29dumxZUHrfnOb2vG5pwxbtILdwK3xx6iRDVwtEK2Y/8Hk4mX1Y7lFoqm8fElOHuuWnugZfR+LE0CYrmL/eByMkOLMwWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744282796; c=relaxed/simple;
	bh=RhVAybeIQHFRVamKL+GtxJ/15E23NV5FdLpR7kzGUG4=;
	h=To:Subject:From:Message-Id:Date; b=UmtNaG9smDlWMeLeUrF8d42XQcZzCCU3SyiGarXHHgVAmlGROr5z23EqG0VLzupOdOhaJDaSkORIFnr9ghMIDNd/AcUV6u2MLGG17p5bH7KBgdyMPYG6HTb+7ptglQ0V30PBlFPdsL2YMDnYSIrcF3IK7+OOFBsOhGPCM6qAL4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxOR6EHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxOR6EHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ABC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744282793;
	bh=RhVAybeIQHFRVamKL+GtxJ/15E23NV5FdLpR7kzGUG4=;
	h=To:Subject:From:Date:From;
	b=sxOR6EHIHPOtsaH3TH9Xt1TvKDj5qk3zLMo5Fe2B+jsBqcdSKg8skdSBw2bsyV3FD
	 36C6T2VAOT6VoKPw1+E2/dkCUlR6rT+yeOOM3A8tuwDsJhoNcu/umcYRnqD9voOCSX
	 AjHtQKxxh3s6EY56zAY27RAoRpiL3mGjn/2WMXq+IifWL5CPufonYssG4eOpDhmU0s
	 hcKm7hDKDoscHBn0a+j0eOhtzUOYyKyPM6Sz4/fX9obHHqsMnsFCHi1RHj/3q6vYX8
	 E3klrH6shIeJvl9HLgAxX1bc3JOWFpmcwhyHSn/AxdBN2+uUi1xjYwnR5LUvwbWTm/
	 qK73bTOcwWDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF1C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428279357.3327.11701230850037314691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c57c20790cf1839ad657295568f55504a35affb50e567293ee7c6d4e8476c82
Date: Thu, 10 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744282793
