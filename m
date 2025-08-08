Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8B421B8E7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754649595; cv=none; b=exNIvNQHRGsCj2axRhbwLgcYDOP8xMP2MY7Zr3LA4oelr5/+YPD1a682hrfnN+IbmSslYjE8yCOrwCt6e4zwnoa+gth8JZeTcqFm4As/P9G2JLvKJ8U1mYjcRwq6LVOZ/oo5KEdPqLNfhQk+c5yuOqul6+MqEfr7DZn+McEGw84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754649595; c=relaxed/simple;
	bh=wjg/VtWh1HPJnQna+RPZNJVBAekPY/04k7X+CcbSiN8=;
	h=To:Subject:From:Message-Id:Date; b=caFw4B+q5Jm2uU49D36i6FJjDG5SXIoWn0DjfBrgpAbMQ2l4rx036/vlfCmD69bhG6pin2nf+UMx0PA8TiuKcvN+LeEL/LJD0ksQFeB/8ySgm2mcVRU/LHHzwEZXQF2WMlOVfHRabZTAsan26aYcYs93xQEd9ylAiIKQENNch1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P68suW7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P68suW7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9C5C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754649593;
	bh=wjg/VtWh1HPJnQna+RPZNJVBAekPY/04k7X+CcbSiN8=;
	h=To:Subject:From:Date:From;
	b=P68suW7uiOmxNkSJ0SRnyxPD/NsaUr2vR+fcIpHDjv/a6T/2htjrK8qjzcYnk8GID
	 e4in3NUutXZHepX/Cikt7t0B6yrJjD6aKoDUtn+I9U6FMsuiYpUED3VspSdhRsp1Xe
	 T57HEfLu19A36pJkLcEGA0DmOUhxF5rKKEeqyrp9eJ3nfo8XavbKkbZYIgW4dZMNS6
	 U7vqdZT0b4JjvKOiLjAMnNs1DD85YY3hl+LWqSQQivJJmQ7rW/EVsExcHWTxzwOF0l
	 2z/oH5JjHzktzfijXXrkbH23BC9SWMhrzFfIbi6lC4QjSxBTcCmCHY5qo2kG8E84nm
	 0EGn1Hs8HJO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E980C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464959357.7199.4699139103066543643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ab16339145b2e56c82c78ed923475795b988161ae43989a90bacee98486a71
Date: Fri, 08 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754649593
