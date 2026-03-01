Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36F430B85
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772341494; cv=none; b=C/zd9fbc4w0iPzNFE3rg1xM83xI3O6HykVkAlgoYTRFFq1SAGEiY7TcSIGA6kX6tNIcOF10vN55GEammjud9PBfFCLv0sgYqAjmf6NUlhZKnEU4S5ZeWhOzPwPj2DGtzMAMjNUbzDLIc8lrmMBqWOjpi3K6BwtwTXietpsObQ7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772341494; c=relaxed/simple;
	bh=k7DUOO9RxR9xFOnpewbq0BtwpIl8kj6RJmI/kO4fYbA=;
	h=To:Subject:From:Message-Id:Date; b=H+ARmwQ+RQ0O4Lz8Zi94qo6cUMm8+iycoGNaz4t4jVAQ9e5ZIowVjc89mwlF8czjKxuK2Goymt/39pKNyrIwf5CDAc9wY0dFmB4Wvt1Gv8oY+czpQIkM1Fo1sKjs49z1re1lG8sNcQEAyI/BNx4cVnU2/zNTLvcFtDt1UCk4Hf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oz4pZwib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz4pZwib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF4FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772341493;
	bh=k7DUOO9RxR9xFOnpewbq0BtwpIl8kj6RJmI/kO4fYbA=;
	h=To:Subject:From:Date:From;
	b=oz4pZwibJDb5WLMPXhZot+nYxGpbBEFvuAIwv5vG9uD4fRife7fAQIxkU1a+C3IJm
	 dLYEtpH5IYuKZ3KvQH8way31k18ifhw4dzvOt6cHlDvFhFini7ZkScScELUwNaqsIV
	 t8rfijTR+RDTYPRdSciK+J+NWmAcZRBYL0A4iGZSWTYkS0BCh1ZitBwNGnm7vlYSbm
	 p4j41mjuEVQp7qp4uZxHh5AqPxmDmGH2nNkMGL2KFZvUztacSKOKGsObMFxoFW708Q
	 tXyaIEyJeyw+fbBWF3nIKnFH0cMsrqrxdkHIZzxehiGoD9ZbqGFKK7Fn538gEf7GDU
	 H2gEgBy94DtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A917FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234149361.14803.18194412703446979078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64593a9acd50ee75cdff4af050c4188d5380ed09e62176b0a5c46acce0194acd
Date: Sun, 01 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772341493
