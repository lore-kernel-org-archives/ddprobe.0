Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF71222594
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752014994; cv=none; b=Y0PITGNF1ENOBgaMSqKW7zQe7TJNp3EJAT4ZXaqgxJ8zbA+7wa+wtqQdv8LvuEM8GVIOz2VjYqachYlGkWvfF02amwacU2sgt08BAbBEn+wEJ421aQudRLq2+O4Bydht6FQilGDpVcTuHtMi/TtHo7OCdzryQYe3lKxmm6/I1gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752014994; c=relaxed/simple;
	bh=7vySL4qhJ3DNKDNpuklQEr4CKcnACeAk/1Fj7tIKFgA=;
	h=To:Subject:From:Message-Id:Date; b=m6nUdDwpZ2dyZaBm8wHXiRZkEJBwqwmWM3MgpRXK/v3qxagOolztU+FmpEmKFF24OYXF7+N9YEaS0h/1DoyNaennJDa/RRM8Z1+DBV28eohRVk3jJliFqpPGOZPp5RbPmJXrZxEyn3mcUGivnSWF8DkPpQk7JvjiAHXUhZWfHCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7m1+ZSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7m1+ZSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE494C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752014993;
	bh=7vySL4qhJ3DNKDNpuklQEr4CKcnACeAk/1Fj7tIKFgA=;
	h=To:Subject:From:Date:From;
	b=Y7m1+ZSoz3cbSwSCdttsLulCAs692waBYbDrcJWei0PskKmc8laywv7g9vUk4oTBQ
	 /rH6nfNQx+BCvJ0CBFFxYpMjUlyMtRcNGLoh/ZNeezJlahngvb3kEQIPONWi8jKKWK
	 enJa8W9TCpAO4zFb2hCorzjDq6SuOGJh4zlA5W1FIzU3DdtF8v+foqwdZ0b980pkN3
	 O+rtE2SLlH8dd/rUxutztg6CbfA07a99pRkiIPVtzEeT2Y2+4HmODNlxHQF0HK3Qhn
	 yEVuNO1FYKQYD86TiEoCTuY9qnug0mNhYIWPk7FUk50wf6Ltx7fdLKwTgim1iG4mWI
	 /yT3DCPHVP+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A55DC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201499362.5917.9376563661379951536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0b25237de594f636a49801e49d0734ae465aea13689351b0b6d162fa21bcb7
Date: Tue, 08 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752014993
