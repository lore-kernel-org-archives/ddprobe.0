Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E5175A83
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773969894; cv=none; b=PwJmUA1fNJuhfnr7aOXBqBbzAtaxCNyS85wXZJSI+zDv0NzZ3E8A45bKykAfvyA0HWkouo+HG381rl8nSJWLJVsl40DHZyyP1/bGZAo9EfvcvPBhib+8eolo64GQotDpISVt/MEmbA41801TjyJGJmjc55RI8LxpRFlZmW4Gh+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773969894; c=relaxed/simple;
	bh=czYpbxkJx4d5nl7VL3L/zFSEzlOinQt2KUBJsWOSCI4=;
	h=To:Subject:From:Message-Id:Date; b=DjOCeQ45NsL4yJZmOLw1k/QEHnXpmgPETI31AVb9E6F0aOsW0vprLQMxlk7x4pthSasRr0aqU/DgpdWqvQh90NmLH8+zuRMXDWKZ/42lw/jQqSECajqYMyOeVmz8pSYGy6idgHv7dapg62gVF2LxgsW8cKoaAfvBd9YtxiqWwQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx8PBKRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx8PBKRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3BC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773969893;
	bh=czYpbxkJx4d5nl7VL3L/zFSEzlOinQt2KUBJsWOSCI4=;
	h=To:Subject:From:Date:From;
	b=fx8PBKRMEOh8XL/aMeU8UTQouXfCnO+bwBOS4Y69O+fXGfqOb0bYT+Geyl54AqwIt
	 JQyIy8WlBRhP+pjyY/p0RoJ4fjRqVuN/4wfvH0OUt0sdU5SUIfhQqcvqELKsf9NdaN
	 hh+ffo2kqQA4QEx2cwA7qs6oW0hMHU+xVdeBKiO0c1xQU/M8bQ8noLCuT2KZlfEFTC
	 XPJSD2x7eNIVcnHapTuv6f6ahZJrTRoFpy0S0UrCeQuseL+foTjO/hYOl4Ro5Ox8OR
	 ruMsHQrOC/amGHkypK1daysUPgbYdI0vYrgpqXH8euKSBoH46gZoNZ8sbYkEpT/vSx
	 BFe6M1SI7UAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980071093163
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396989360.4640.10905309096074021729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2ec02409fa352ebdef4317a57dc11571edabb36bfb488b08aa0f91af3f0407
Date: Fri, 20 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773969893
