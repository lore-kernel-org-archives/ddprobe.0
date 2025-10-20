Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737D23816C
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760972994; cv=none; b=kZPW6HWNO2dfGcbpaq2+A3mOQDHxzgX08B6JA7JyAEYQ53lMECIA9RpX5IhBDi+WTheNj/H5o1acH0BKNQyhhlZKP71R+RiMQh3xJLWOCjIaDexYbvnmSi0eEhXoritGWu18RjS6hjeyLCL1+haAQIDLVrMFa14Njs2oGqum+uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760972994; c=relaxed/simple;
	bh=omYbiZh1B6z0hmyyLQl19tJuBqbXfJNp9KjHdRgauBQ=;
	h=To:Subject:From:Message-Id:Date; b=TJJ15Xxn4TSBcLTbR2+qEBzPYcYI+Awqsy3sEnZ2uj3E9Ft7Av1cyJq/VNUJs/R8QG5wJCko3uGodknK51T87xIjEBIeZ9ZDPA8fzd0Re8bGjLbF8iXcysQcF/bCbB2PXtVnWqBdK4x6e12LDQ01thFQaFSlWc7A0RonxLATyQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcKIZGCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcKIZGCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAB4C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760972993;
	bh=omYbiZh1B6z0hmyyLQl19tJuBqbXfJNp9KjHdRgauBQ=;
	h=To:Subject:From:Date:From;
	b=AcKIZGCsl6km4dBJwbMQ4JPOX0sKs0eB1i7NiDQsFiuhgsq5Dr3U9IuJ2TS18VcOZ
	 LITtT05u/YMqQ4R0jRBHIjcWLXFNgwCNxRL6UJY+2EOF99SYoAFA9G+f+Bujj3MrMJ
	 KXHKsn0W56kNS8Hqeoe1FkgxqEjalrOvbxkgq+3AleRkpn4WotJeoH9LSSqDxEF6wF
	 LFGQuh0Y+aCyb152tf+TPVNx+4NsITv8M3IHcg9EUCX7tW6B0KctdAwE7oZs2TOAMY
	 S5xvDVtMYPXkHMFqGKjyEHsL1fgLRc1TB3miEmOO9gJvzunQfLTewUGN9AMH1EGCln
	 W+QqOFhAZkHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8ACCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097299357.14497.14346358070052088395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be51d17b76ff73af69cfdabd2e786ff02682b5e61ba12165a5b702ba70817451
Date: Mon, 20 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760972993
