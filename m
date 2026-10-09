Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943A44D7966
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791551434; cv=none; b=KEfhTR/BfctlMQaiVixMSlnXUSNkNt8bxn6M9ISnPS97KTLtI8HDvpsS5KTwhQgfkXCPKX8C6aszosZ3QdUfrxfIt7C/mX84uc/8zSWVyoQ0zt+FnXayBn9H9qxFmgE5LPnQp7nxRTmAE6uHxa5hlsYhuB5myfGAowX87EINe6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791551434; c=relaxed/simple;
	bh=/7jJYHaVhSZVOvI9RQqFZvj6NI/Tggx4kuYQN2mdPB0=;
	h=To:Subject:From:Message-Id:Date; b=YOdSPywMCD8sw0nDDUrLcVkCHVdV81uBqHZ4/Voh05ALuaGfCj9dAbwEOH9fAXzD2yE+PRCOEZ58SPln6fDZiiRfOleB5fXkQMcBga6mzjA+r1Y4PcuQEm9qDjV5CzJvQZM/JSMJrVAf0m6ttCJkYoXU4gIWjc9fotLmZJ9TU58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeHlv/LT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeHlv/LT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 084C1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791551434;
	bh=/7jJYHaVhSZVOvI9RQqFZvj6NI/Tggx4kuYQN2mdPB0=;
	h=To:Subject:From:Date:From;
	b=eeHlv/LTch4rPPG7AiyFlbrsQmy3+pox/V1a+4sVg0qqZB4C6PanDVnNqqkrGpfOA
	 6HxbHwF9oBrWLGxxwtMO5O/pHKr0XdFDGoi9h1MIjSgI+uifGUTHSa0+ZLtX+H3f63
	 xv26XVPuMnsONmUbHhOdBQQS3ElR0/GL16i0U7wFtU1ypvIDBsBAFGa4mStKiSjPJV
	 V9MmVbhHjPQZ8EhKknQ2QgebZfq8Ufxe9ntF0X6OxpIACUr5ZeC74dKQmyTgkv7NZv
	 n359El6UnmO38206izH9FuLUxi91tYV5/ZLyAlp5lcSkV09Wsp3LinWg/Rogyr2ja0
	 4iN5MfoWbPs6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F56CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155143372.28363.7939771402934922129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4562ad91fc6c3507ff94a69f801d53d82058b19067b9c24e9c14294a60d886a5
Date: Fri, 09 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791551433
