Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B58189B84
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743992994; cv=none; b=DgwJKPMT865gHGQpHULHj4KOYt9OS6frNtHGhO0hurC0V5OD9yKQ8Bkg0o4ekvEQ6lViZ/t2lSi/JS6X5/g3AwLOkx0QGO+VrJ9ayCGWiu90FhrCDkiIRMICwayddXLeJ/jKbNTlKUszDSBeW8KUuP2tjbFj/cIVm5wP/yFN2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743992994; c=relaxed/simple;
	bh=VLVpr0/mCD/gCZH4B0pyYgxbHSSsNxnJ4/BuA3lXaQM=;
	h=To:Subject:From:Message-Id:Date; b=XQjrCmnSVomZYOLqGZn/feczXfMvi9k5nhnx1ngXebF3OhyYmk4xPOaUXaVhxSw1KMA7mcy1YitxqTsSCEMe2xmfeq8afK1ZBuklvP0taJ6XB8z69v4xSdqo22HRKcwTGPMVupQbhkM/kG0gjNJOBQ4b0AMW3LCAW3kC1mRa3iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9SN6H6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9SN6H6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743992993;
	bh=VLVpr0/mCD/gCZH4B0pyYgxbHSSsNxnJ4/BuA3lXaQM=;
	h=To:Subject:From:Date:From;
	b=M9SN6H6z7bq53NSel1z3Svf1MErItn7kNvr/0XRLR2S45uEgaT3h9XFRTFK7mgPNP
	 vd/rEX20je5OILcpNIyHeSXvW18hkEptbHtVs3a2TtAMdT2WziU7lKNA00e31LornJ
	 GGQsED5tsjlZf4ae4EbaSwFt40O2IJqcZ6eKvG8uw7a+3EM9pQWRKOeLk/EXLY4jMl
	 INTd+k5/N9pSgo2rjEZow5FJgmj2Eid2zT6sOUUhdcFOMBNUWl/z8Ntqa8w5u/z+De
	 MosrYDI6U0caRBe9+3P/9DopTiAt3p3kAC3bOM/laiXWLHKZ9cnF8oQyfvr7mEvk9g
	 rFpkjmBsP/wPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C6C36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399299358.7765.6333870192671961268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c203786726f001e67ae7e9dc6aeaf735fa308a7a058f94e66da2fd72c7b9c8f2
Date: Mon, 07 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743992993
