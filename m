Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E5C302140
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764327174; cv=none; b=XmOzX0Ks+3PG0oBHy3kFGlMiN6Ssgc7HIFPQ1qjvvdJGXVkSKiXUC0fyggCdFGmlisAnf9kieMEKbs3coCx6zmJWQS8sfjQ14oYabsQRR7zsvD7BoGDazUc7HPPjZ+QeOlsfEgS9a97ZEUnV1WD+bsieExIti/Jq2gwFqtOGz64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764327174; c=relaxed/simple;
	bh=Me6MRQPD5+uRYTOHF4X46Ux5xm00xnKwrGKn78IvZYo=;
	h=To:Subject:From:Message-Id:Date; b=cmm5IXTqX0SK+B1TpZH2n44BxvO/tW0r8+ZBpwk/k1G7TmFuHRyIeuNNykQjx2IVGDzkBRoIwNCVxSeB+tp9IdLGDVzLv9znQd2JhODWyK8lWq9pZO57knCgZ6AQOy+nAjop4ldGRhFm5WFHbBRjukhviSuzCNzzZ9hLys3QEdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6urCtuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6urCtuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED46C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764327173;
	bh=Me6MRQPD5+uRYTOHF4X46Ux5xm00xnKwrGKn78IvZYo=;
	h=To:Subject:From:Date:From;
	b=B6urCtuTHPnShEKtj18V+3gUwMV2LkH/DfjrTK+KZpd4G8qwV/7NYtbRVRsSmdFDJ
	 mJHeiMJXHKTZZQna6GwN4YEGWKQKLaUD7bxK6tfXQd3+ykndOe1+NJAC6XOI8sw2P7
	 DD6Erq0tjZopkfleWW/rlBcIEB+CbY4EHjDHPME8+EqIOC2OLHtpYUYmbbDXsfX9aa
	 k9EjNoCPOP/Nr7IrC+16jUX0xP/RLhPOhFnViVoEjAghPKqkjlYctTe/+jrnWCU1JM
	 6e5l5u+t7ynYXXTlXye2nw0gglqMAPYxXIAZ8frFqZ8wRKWBep+UZnRsZW3ctYqdaT
	 6A4dbshiBEskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C2CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432717361.24209.371357345352277020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad61b14bdf579189283afa18486700c16b1c20010ddc46550d07108a9fa84b52
Date: Fri, 28 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764327173
