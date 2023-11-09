Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6C220B0E
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLKJ9NBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8C2C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699545496;
	bh=36Zff3hoCxJeDcsBbgN9WLVtoJDk/vwRmseSah8Uopk=;
	h=To:Subject:From:Date:From;
	b=nLKJ9NBb4TDcHTPE9u5qsKh4/5gLfyJsG7oNhUOqELa/UfDipRI21WWBKB3utTq96
	 PO20wENr95DkBI3GQ4Uili9yUnWhyYUwucG7xgvqSZK1P4HRblaqk831f1fxD22vp2
	 RVikRjKvyYVt+YVdSYIoOjr+E+tGw7GCtXy9UrrIQaJfICXs+9kRwgno5AT43BrSwg
	 vEYTcsuDaDCd/Bhc0J6lyy1tn4LE9ZGQt9MT1Syskd8QJBQhQa6hD6aa0iy5o44bLf
	 mrT+4Jq/YWv8/ogK2qErcOW6ADPoyzk2+bqSugRVPNsz0Z05SlKEcu95LB4EgTOAnK
	 MghsBCCImr7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608A7C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169954549638.15936.3218803937330998788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83803368e4fdb4301a6d0211779beefe5013c7c76fed4550463dcb042d452703
Date: Thu, 09 Nov 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699545496
