Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3575C191F79
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744132194; cv=none; b=qMcCCCKubLQGghHzwmPJAVF3SRtWltmHDxBFUk2wrSppOk5dku8KOgGBGyfYwS6oF8hdKlCjxEoIh6GcjJ4XrJDX4vUcHdhG9VEb9LZ6D9jBzZgLT8NMQzMb7i4u5UvPNU6Wq4iLUyVbWtStjf6luVBmxA+yFTyyndOxptujUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744132194; c=relaxed/simple;
	bh=xl7mgdhOYHiTb31Id4PeHBDffrBkxN+vHGTJcuVKUUk=;
	h=To:Subject:From:Message-Id:Date; b=HRyQ1HDkQPDOXsqjwtmoDT8V+UTT6mpV322FTCvYu5xJphlbw9LAnHKEmyuL4RJ4Oc7h65W3qO/YkxGYBXWX9WrinABN3wZR27R1Y+zetV6y8TuNDrsABb4hPDCkXdMNpZsCK3h5XKz06SDrFQgPkvj2T2+cz57FE2V6dx6JBhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnUOg7ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnUOg7ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665CC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744132193;
	bh=xl7mgdhOYHiTb31Id4PeHBDffrBkxN+vHGTJcuVKUUk=;
	h=To:Subject:From:Date:From;
	b=dnUOg7axvR6YXtb3PbpI9L5NjcwxBvkbn+nhpp3qNuO/rU/4d1O6BV/9IfowjMjNz
	 iymKXUqGIJza908xZEWhKFAWYfPYg2ppq0aHkGTpDqN61B3XjUEpAJx/2gSxBiKTiI
	 fJSAFShgI7fgREq94RkDYyuWi7rqwTy+e3+14/vsL4yLt4ngHbVOuyb6rBvOXTcm81
	 ZhN/HJ59t9nSU7WSZgVLmN/HY+PC4YFqPynRMY399a8Br756llPfQGAsgjFuQtBIec
	 5KWArKz5r/FSYsggEBaGi681hL2vrAO4zwK5F5F27n8gwXGK4NRizRv7ge9hUbcuTk
	 Waj9uuMOy4GCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDBC369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413219360.20394.5401477332113650665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64833890f7f590253973f5f5791a3812de11216f152015e88311ef66db53f08f
Date: Tue, 08 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744132193
