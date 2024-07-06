Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD7012AAFD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720286183; cv=none; b=Bu0kX0xOKFzIOBqTi6MmseA3cuEctuRmxX5OWexzCxXKrneQz1cZUmtx1KbQdXyAeoyJYqCInRnKiypmUwXDMJ/IQwskA8e2W4cXXhW6fyPIENagVgOP3qPMktq/8y3ezqoR4UjIw3qWL6Ga+F2mi5ypcXaPcSHn7hMI+J2DUoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720286183; c=relaxed/simple;
	bh=OTZB8y3Upo0nswWIjJCfo6GdQnOfs8ppoiXIvczRNW0=;
	h=To:Subject:From:Message-Id:Date; b=GrxbrZbnpP0NRRHJOaPrCJ64bWj5YihhyeoephxlWdlZFw5RLEFYPTboTKh1zWnWC/0jAYsqcgLEwZ/PSfL7FILwd3ojdvf6k6CbisIcWv6zfTemG3WMqMt5obdbHJH0hyPIL3z8NQhY08giUKa4aZCBHBWQ3Gggq8KZmbo1+QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY6zf3aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY6zf3aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DDBC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720286182;
	bh=OTZB8y3Upo0nswWIjJCfo6GdQnOfs8ppoiXIvczRNW0=;
	h=To:Subject:From:Date:From;
	b=WY6zf3aQcMsZqVFCVBBquEF+MPAYhLCEl1qiF5DgbFhpt7wiKAsKB/eywxKnzap6M
	 Mr8lVdiy11JTOaHV/u6a0JJML7T49/MsX6sjTWjRzrLL6rRTM/yG3v7qjKztnQkyMA
	 fYmJtanOGzLBFqg957RHpavlFDU5GSaWfSqnY09SE92D0BcChCuqCA5Lk7xf2y575v
	 i9tTFHVqPvwU7HR0lDcHGpzim+2GKkFHiFdQXUra48rOZstEwShSpcdQKKpO21KHap
	 2t8t4LlV4W/biIneV1CqaBWkT57DIJhbu7wzKTzTFbGDeSYM/4fDXkv3l9KZoWZpAy
	 MWVSAWcdrUgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F5AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028618277.2915.12267044426564615152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58025e4db8cb5c52365e12873b058554152ebd650a00e6047d64dd08874023ca
Date: Sat, 06 Jul 2024 17:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720286182
