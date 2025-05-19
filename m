Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB641A3142
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747685994; cv=none; b=BzUL/blUofLLkFsrRZ6tJbdbuIxTxA5hCZDrlSUrxEWfjq0TdSbucHq7WzA181c112XR758+fs7M/FvyogTZzVa48qXAPJjHfe4YUSFJ6tMkhjXsKqIibsO/5jytjf7uiAHBnNkpVt82qbKDG4gdsbyFBWjsBEGv3ASv8jW6Pvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747685994; c=relaxed/simple;
	bh=78pHsKo+wfqbVMYCkA8LOwTVCEbfh+WQob4Xo75s44w=;
	h=To:Subject:From:Message-Id:Date; b=SMl2XTjDZ6mOUQEzYxHHu18srZjMxV+ltoCzRCuQT/RNS7T9aQyHxa8BAaX3cYJUHYjwR7h+ZegI7sy7aO2U1xWHDxvFP2YB7BjJiSRKsMvV/+l2MPiVisAiYI8hqH3zGCvLWx9W3muMSPFugWLjPVbI1Of9XCJCvigM2ET1aRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEYo3Awi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEYo3Awi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A0C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747685993;
	bh=78pHsKo+wfqbVMYCkA8LOwTVCEbfh+WQob4Xo75s44w=;
	h=To:Subject:From:Date:From;
	b=ZEYo3AwiiBopCVLAv2EFzYJSoUVS+PEUbYtu411ywwzqb1UUFk6CPrLA9MYtbO4E/
	 dfulV2yAUIIE6YDVohTVXMOwRiqL5j8ZKpG1JSI/j0reHrXGPxDYvaFZQu5FLzvdpu
	 ll7GUIzcO427VHs3zhKg/iB7Hx79od4wZkGf9nJk4QTd8JGPHh9EQcoarerF9OKHYk
	 PEZCaCEGuP3H5GQFhZrl38DsYmgkgFxaHOKI6d8gSR8v4maPPD9QzgRuH3lCgc+c0J
	 beu2k6qoNkooKPHXKaZ+C4XNEmvnBQiqCxMcgeGr7DRRnmhraP+yLh8CEFL91N1CoY
	 e1mXpONsbskAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD09C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768599357.13270.4248847943818452791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7d42257ccc9fce2bdf21e1d4cc54911b0b89afc3d7447ffba6a302b8c85065
Date: Mon, 19 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747685993
