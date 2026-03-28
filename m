Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E342306D2A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774673694; cv=none; b=e5oklzhcT3qkWQXzpYzm308/7S016CcEAIQoqEB21Jm5Q9Gfk9T4qQn+5vOzJtdgWeugKwXwMjP/K+BiavIwRVRiWhbIHKFFO9Ue4+zVBoLoOliZa5PJHpezG/nxwzAM8hj2KbAY6IffoIKadIVwNcZid9T+4rFYKLzXNLKARgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774673694; c=relaxed/simple;
	bh=x04iOCmCN6LYloXyUtQ6i5JccKfRaqQsHS0FIaX49qg=;
	h=To:Subject:From:Message-Id:Date; b=UVYv8INj5XzALwKzPLjzgGcx6O61wS7VXBeYidbwHlBrXdQ3ixtTqh7n46yMaQM+rxM/ch17ZDcoYD3ng34u85qI5AG2Oq3Q/9fq1K9tLfQvr4LZosl/HD9AxKA59hkyV8yMNeC0MXAwiqSpw9VwNj7a27ZruFl3PnhmFO4eKO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7Flxbll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7Flxbll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC092C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774673693;
	bh=x04iOCmCN6LYloXyUtQ6i5JccKfRaqQsHS0FIaX49qg=;
	h=To:Subject:From:Date:From;
	b=j7FlxbllW7/nS6gqUqDHFAowzClCq8sgKpPX9ayeO+1MwPTlHOkeXGkKFGcsfkgnQ
	 w5YnUQQ6Kyz1Pofb2bLjTT9iUNKMjzTb6gOqqws7WwwbOtqUTTf0Yht6UQwgkczZ8Y
	 9v1B/M6ie5geXaY7mHo1mXXeV8Eg8yrgEUjYkwDh/qePQ/+NwLRuHt2EJMpNgNSuS/
	 i14sHNEikarTSycVZJKIBq6TqQfp6K9GYXioyu73nPM87+juR2qk0DlVegc1NR0jNQ
	 amXslIzW3ejaUsRN9HsilpgNKVvr1JPZcn1Mq3i1qXtEgQ4v9T9eEMwovkze1wvkUe
	 omqCa/aMrS0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A11A10F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467369359.13784.11331856624809065855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486bb7857e490dc55b059834245392a60ceaca7d1f5635a6a8e9aefa1dc01fe7
Date: Sat, 28 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774673693
