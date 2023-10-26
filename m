Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C48C17CB
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGSqmh0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DABC433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698281296;
	bh=vxmLa/tI/cJnXrhhAkuEf/m/iOJ0rBtbk4wTcF9rHjk=;
	h=To:Subject:From:Date:From;
	b=FGSqmh0e38fX346ZVIutlu/GvFX8H5BKmU8fN/FfIisembYRBr59jxIk0iyFRjesa
	 yI2gqf+CHCgJvOGog7sa8iWwES4mQHKAlAAD3F+TisDJMpdC/k2MK3RkU87Pnf6NxX
	 CIGdOsawz/SySgOk2QJ5xGuX+aTVGiYa6xh/jeTAES+aOb51JLY+BjvI2ehEwerpa4
	 sxbM7vxDioSJmF0sUXKUPd5C7Fhhcs+S+GyzEzQ2uYevOvnqJL8fyoO1AylA7bZds2
	 1bA5pNFlHdPKO7S5UtcPu1v/BkVQoTZOy2BhUwr6S/IsLgE9IR72aSVJ8etlKolPCg
	 TU7vUtGTy21Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64523C0032E
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169828129640.32304.769997964295564881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4897fe4cbfeb0f2103c6e1c0efa68e64f47fb36db78e78f8fe98a2e6c9f2dc
Date: Thu, 26 Oct 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698281296
