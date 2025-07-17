Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D03B1E2312
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752743394; cv=none; b=a74SuX0k+/zxmX1vb2OZVcG3sDahmih2XkX3Dty0w+qrpyswzyVS2U9foBJhJcjvZOWYH9CN4s3T4e3qg/O1Ls/SsMgrrAyqGYaLdp8ilO12KSa3XhekiPQ2pOPwfLizA69sZ+8La2tMCPy/uJtm4DqxxTmV1hUEDpmAoM9bcwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752743394; c=relaxed/simple;
	bh=RXgp6h6yKpXwDKXW+V/QG71d6C1+8Sqg8gclULTbWSI=;
	h=To:Subject:From:Message-Id:Date; b=AEzNvmRSBv9Zp4BZObRGFtaq7L9NUurhot3S7rONCAEYeZMVukT/GZwGSK2toLfLsX/fHmzBLSyu6r1loQwCyGe0phXa6O0NFOAGXijM3Bwo4vUb3fXkPdvHDfs28vOXYulx1IQmd+PPvk7yJcl0BqdLo5Nzb9A+YU+dYCeHvtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlCsIQm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlCsIQm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47BFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752743393;
	bh=RXgp6h6yKpXwDKXW+V/QG71d6C1+8Sqg8gclULTbWSI=;
	h=To:Subject:From:Date:From;
	b=GlCsIQm4zJvPo6zl3jhsrE4PZr/Mq/AXSUH8eMhtzfuabmD8I+g9rFRnVJAP0q3bH
	 B8iu8OWOWeDbrNAHnq/URN0AAoZNu4KTidun4g0x9P8Qosh0MeXjV2yQO9MCVYwt/f
	 NxfDMEwbg0FJlfY8wgh76lrhCaYOqPC6aSXIRplXCQBM9iMsMu3meOtDv3iARRk8v2
	 IDomDWeYxZnsGObgNRAKC5wrtymJ7KbGDeLtVq/m8lxF8AN7qnJf2y1N8TxlydZLft
	 Cjn2t4fq0gq17iMyDbdx2QoyTh2BIJiRYzoihqWE8KdnVTnuicR7rKzitBA6KSGcuu
	 HecnhWQ20fg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0BC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274339358.24956.14457913684902762327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affedb2d72f226da97797297be29092a786ee5fcef4b770a0838c18e96896b92
Date: Thu, 17 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752743393
