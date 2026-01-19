Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1909229D269
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768853634; cv=none; b=deuVkdQsa4UY9yH+JleE4IXIJLvRWXTh4/m31EjlhIk1ehJYTggeRwbZ7GPt0ewqu7dEuUPJjEmPXiv+zqGXnRuIpWUAvLxt5aDS48d/qN/Bzmau/O4cXJol7rB9udFhghTqt/iicvOUM7QOg26x3jSueg5IlVqXDT+OIq4gJMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768853634; c=relaxed/simple;
	bh=+9h0CIqb5YnUEzLzxBnZwT8ucfmPJLuAvy+Ib8zloYU=;
	h=To:Subject:From:Message-Id:Date; b=a0fqIj0qqA2XfoH/wts0rEa2OCdLz6jLofyVAJpjxCrDJLxZgcbotbz2kBmUujgGG931UO4kOHJNhc2KPeeMdgdd8hWrO6Tl7qld2ILqTP0AujFVk99zzP0U44C34SXwJ35AnjCQSZSEXvIKx2FyEAM35Y3Wbyvj7oPV59lfCio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aubMt/E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aubMt/E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768853633;
	bh=+9h0CIqb5YnUEzLzxBnZwT8ucfmPJLuAvy+Ib8zloYU=;
	h=To:Subject:From:Date:From;
	b=aubMt/E6o8aMRMBhUj7KhoquryvrcPAGyqfpYT6pu/kbUj5aGs5ETD4mg066T0S02
	 3vm84rBrAvzS/StdRjW4qajzi6bTCc5s18Hv12RIBxjgi85cdMzOlRr0qpe1mCQvcT
	 kkU8Wla+NAVJUDi0cbzsUxvz3zgQa/uQSoba9vX6htT9W/2r+tS+V7VurOp9miWwgj
	 V0q2fYKw+WZu50Io8XKApfAEYNR8ByzQ9DBw+OmKTiMEwMWAGNA1bqXddjJFIgbI2D
	 ywrXSWY2jc5A2s+5++WcYs1hFLohxNtuRWF9ZnFllnnbr9mNE8r5ORnMhPtf3EbmpW
	 91Fo2zYRmnjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE6D29C4D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885363358.8102.2306965099339163596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c6b937ceb2a90e165969b6a9bfe4b690103c27de92022c72540637e01edca4
Date: Mon, 19 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768853633
