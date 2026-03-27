Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF321F3FED
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774590293; cv=none; b=CAQtGyNiwJvwHD/FBRrbrOcnW1PPnMF4Q8mgpsNB2HyS0pH3j5lZ4ekyp/k+/jKK0k6+moDmCEPndiGzK+diwld/E5iO/Axks8P0c8rTUID5wGwPQVxF103EbKI+UM5kebwYZTKVmek+t6LzmMSK3Cxa+aDEbzj71gxmgY1lAWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774590293; c=relaxed/simple;
	bh=fQF287/MAG8nGTlyfWb+4vMfDz1xQkPRf4pMLHqT46A=;
	h=To:Subject:From:Message-Id:Date; b=PZlg/SHKGqa9r/ZiG+7Av+5tGtpOPqKytIjI0GopqUAZQ75w7xjdLd12fYkKI2tZ++Y56X1b/+mfIgpdrZTPo10VcDuVKzbl8rfZOxQhzKOdf0f4/26NMc5t77jM5S7+6UzHoNIh5jkXKBRd5aaaP9j3DpsFrqgsoSj75JZZV54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCMbITbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCMbITbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4434C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774590293;
	bh=fQF287/MAG8nGTlyfWb+4vMfDz1xQkPRf4pMLHqT46A=;
	h=To:Subject:From:Date:From;
	b=UCMbITbWZiZX/m6qI/8t304EnC5XBXtm87msf402N76hFV2o5pMtofkHmK/76pPEh
	 mqqE2g4Noo3cDyN3gSjD7uCnBZxMYvFSjNC8Npa8tUfFWfLCoHUwlFEjHp3xE04Rk1
	 n2T+5NHWuxZuwDeLd/0rJ82Oh/Q4Eo+BITOxjOuFqLt+/Qnk+T1WkyIHtX/IuugmKC
	 9SYjY8CqJLNqN5pxYoWbXSEznL93r5EIyTLHnU9WJymJa6H5n3FbG3WDGT+aj6+gRX
	 Z8Z/Nvohqp0cPwYFdZODR2JFnPaKPVg7t8388ReACtoTj6DryXxLN4da5Ekp12Vbik
	 HZoqqIaevB0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113D10BA42D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459029358.8703.5556088838947136204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f44b666416f2c8e995e2476b8eb4def91b9a39bce27b744bfe75fce4b62a1c
Date: Fri, 27 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774590293
