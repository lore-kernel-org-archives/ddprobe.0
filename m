Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5751A244667
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786498834; cv=none; b=s1CbnkV6NSQ43nHRNAAlvEC+Olmc/1ElMdPhbMtwtJ/EJ2R4m2i2mIak07j6drx6sQogNYAjThjA06bK9HXEnK6fb96oC2hdspZEdRJZpcmmu3MFAMCKcy8LlxfdkM4TdP687TwOWbgY3BpjqXcWMWLxuZKY96hjik32G4IuZ4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786498834; c=relaxed/simple;
	bh=aGlWa4uB2kqazVYMB4WwyOzk5TkrGgRi6x04CFcaP4Q=;
	h=To:Subject:From:Message-Id:Date; b=KZ5FcDf26D6QWdBzMts3y7BsWPnL2HDsAgE8D2GPOlK/FKOcoT5rqyBJ15sZsOjRCk0zzgSp82Cx4BTnrzKVCxMbI2HOxDabU33pL3H6pqzbYBkrhKxc1oLAwR81m5CK1jVIsrsRNF8Hy9OgkZVeTC5UPa+vn33Fn8GevG3DDjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBd8FHKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBd8FHKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4956C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786498833;
	bh=aGlWa4uB2kqazVYMB4WwyOzk5TkrGgRi6x04CFcaP4Q=;
	h=To:Subject:From:Date:From;
	b=VBd8FHKQn9Iu3v2nddiOszroGS8foSxSHuBi3dZfkw01PmE+8Pmr3PE4DDyteASAA
	 BXBe171qv6yKmpRQA/PlkL9qtrVitphMBj6DC0jIa4wkjACTcMq/FAigsIybqRaLrJ
	 Z3jNjQcJAUPtalZeu2IcYYVhQN+yNI/BcBMRgT/DPhgKj/V0TN3G5h77G86OC2giOu
	 n8Ixaf6RlpGyjJXzGiR8SgLqB9BE39zCGjJJ6KTj/eO7vp/q7JKNvhW/pgw8eXOlm3
	 PEPUiDkr9axrDFJ5/HnUDfLjGhv+ebaRw2U4MXXWUxu1tgFdNN7dnAF07/JS6M3BY8
	 CcCd5TCRbBUOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECDBC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649883370.7804.2679412911049445907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d947d11c7aa369a8a069a43e0fe5b82b873890a980aad20086ff04376aa7c47f
Date: Wed, 12 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786498833
