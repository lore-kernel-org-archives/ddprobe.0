Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377102AF1E
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731138354; cv=none; b=dh49vMkqPP3lS2sgU8lLRWdLq/0l1m6cbeclEytUJJgdrhrBj4tVdZ6mnEojArVzTafmKx5vqiv8j9LvhyiGiDUIQ0R6JCo8MWanyhuq+ismEQZ0DeOYZXW7bapWrm6TeImDV0IoL8UL9p5OwH02vmapeI+RIBfKwIUc1jCBe0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731138354; c=relaxed/simple;
	bh=gxILziJEptwXxWlG+Zk4px1kz7Gfgis+zN7x74lD9/E=;
	h=To:Subject:From:Message-Id:Date; b=ITrTQkaUCS5eFlZmfmSbWLbgBJ1wImKXzYYXaJ1B6HowpLUqsO12YRZsXKxSUTttrnvZI+ltG0iEqQrL0L6MvzzR0xLm89XZj7Hk0eK0xQfQH+xcwkqhUZW4YwgZl8pjYWk0J+AbayUw5VuVfg5PuZeTBne9Tz7M2JZMRHCySsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcG/iwm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcG/iwm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E35C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731138353;
	bh=gxILziJEptwXxWlG+Zk4px1kz7Gfgis+zN7x74lD9/E=;
	h=To:Subject:From:Date:From;
	b=mcG/iwm8H3w7n30zSbaPImXCeQxpVcp3LJkZknQs/X+6Kn8oGQx2hzPJgVYAtWCBt
	 c2BDcg5Np/uvlv+65qOLgZHefgYhCPladKBCPYw0baSI/dHGzqgljA+kMF53GTjyvK
	 5+pZmZTgxEhhRnrcAfuoDVS7OecSbeSogJgZ9+ymyPI2CzVZSns54MEnQc+seyVHEV
	 emX5+EulV4VUW9FDcyDvK4b3TdxJUpv6xahIT9/agTx/TvJHUC/+/h3EOvvkh/BHdN
	 OmLCGaEjg/wEqWLEsCh8q+PrHxnK0ypOwiFOU7NLLNBbCBfDOGkZBe2YZ30S9nTM0i
	 tsLpv4HhZB+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A90BD5E123
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173113835359.13008.519957109427961146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1468bdfb23661ae316db0163fa896776b7478bd4926480666779eb69ba74314
Date: Sat, 09 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731138353
