Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4B22CCA3
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721271323; cv=none; b=Sbh2OObF5gtcr/7tX3IPRaI6wOkMZFbFxRsfoR6i7YcoH+6z61UFOrDH7tY5IhjvCPu+Fst1Ewq6jywVaCVcgH0N7lk2x9RkTpz710a3ICEcDmb2J+KZyWCDWxjzMI1uUvz7Hl6UJxQ9D3MK5hACYWed9VtbzMnJMUhfC3C6sz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721271323; c=relaxed/simple;
	bh=jcaC67sPbuLZOOJ2JwyaXXzv3BbDZ2CcXWMtPbQEiAs=;
	h=To:Subject:From:Message-Id:Date; b=EG4609YjcAp7WKUO//vnuTBhXOJqf5YZKQDvEUc3B+klEwCKIjxokMLq7nLik2iBCiMLZErpD+YZ8TbPYNC03mNtmpq9TbT9Q7PL5+4MfBZI7Vxcn2yLDL8Mm7OwfXWc7Gh+LhCkNhxx1Ncmz8rbXLM5XY4N0hWfqM/mcrPOxuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzIQQs3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzIQQs3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEDEC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721271322;
	bh=jcaC67sPbuLZOOJ2JwyaXXzv3BbDZ2CcXWMtPbQEiAs=;
	h=To:Subject:From:Date:From;
	b=pzIQQs3G450J/v9F36aOzQtdoS+mS24D5S2s/TjS3iiBWfEOhdw8CbaBPaHblxDyI
	 V25K1KupNyEqNWx1xbFahbaqKKRc7CADuqJGIdMKyENzRUfAdqV6RDhnOC85dJYBsC
	 gGpNCBAhEtElh5/Eds8rZ0bU3arVIz9P46T+PiNq/pdL2L2ZOBvv7P40B2HIYxsjrn
	 IEU5dsui8KO9/5nIz7ymJe1X73nYWtq+l3K9bSL2h+5t/mzG0ThLNY+bNzl3dRF9XL
	 yc1CBJ07kOV/hEWFj0ag7jXr9GPHdfnWoyfMZEzpAevrZkAve26XG76wIvphq/LSlB
	 VaM3XooX1sg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBFDC3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127132276.4232.680632168182904534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb973cf3b88fe107e4c81432c057fe739446b132dedde78c57d0c1e3e81fd2d2
Date: Thu, 18 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721271322
