Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C20FC8EB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748502597; cv=none; b=hjUpwLo/M5X3l2FEPXnlHlCto2W1fGaLbg+/hHvshNqIy51k6znG3uFdBSQ2MmrPtmP/qhEszI1Hq6AXk/7mdg727XuJbP2UTUUYVXhtads17Dtw/AtjwGYF1h90g91/VXSWRbikQ2HMFUJ+62RhCNXypI7tnwEZ0J9mG/EVzq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748502597; c=relaxed/simple;
	bh=QF4HAsyV2BvYHdUK8pU9pBEWoERCP8byas4mhpb0ML8=;
	h=To:Subject:From:Message-Id:Date; b=uPxbzq4zMrKhY0iSP+8G9RR6c9e6OOqaWVlpcKj7EF+YwIAi7t2JPVsaqw1donaY+CnjCENEF0x93GigHcgeLY4akCvkVEJ0rb46nbv+Fakg6bS6aqMi2RYURE2VslcjKO7/zGnjNLOZDp5NMFHoFazv0HVVMR2kSZOaQ0V+lEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drxv9aOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drxv9aOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748502594;
	bh=QF4HAsyV2BvYHdUK8pU9pBEWoERCP8byas4mhpb0ML8=;
	h=To:Subject:From:Date:From;
	b=Drxv9aOHx9hcl+IjyFm5kYbR3gEOTl7PWH1J00FxhkZl7rpZSZJNTjvDhi/9atKAC
	 CT/3yUAXshR2Z1ku/agqHDOZrM6m1xlctJdqQbJoJfeFyYBoi3+uxscy6PAQ01e0wX
	 dtZzDQq8wztXL+L/55Gcum7J2eJ8Ezx4GKr0Scx+m7OZ6Hnjf8QcMCE7XmtZslVd+v
	 ainWoLJ7wAmBKyn8FvQtxFKNdL8RhMSOfX1s38BK+YXzTR8CeA6MpJOnhLGeKwdqQh
	 aYtfps2l1476tA8DWcdqJrIawbkxXolDWo6X8tQ5REZw9Z7g4in0/2cAvTvtljJSZh
	 FE/EDmi8fkg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431CC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850259357.23734.9876288062484786366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35607bf2a8b6a7bea98a0d08bd5d27bee06cd1958646458e203d3c2e1016473
Date: Thu, 29 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748502593
