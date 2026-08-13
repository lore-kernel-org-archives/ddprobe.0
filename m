Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A27C3B6364
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786652434; cv=none; b=BBOoaHHinoj3F3bHj66qCFqbYQDK5vE7CYvZbYBwdsuQvVtGDLy4uB3F5iAVqZc33Ed48fxlCr63FuzNLxOxAs0JJBR+hC3oz+s3IyC1BGO2V4iuaYJjh4DmJMFIikiFa5i9TqvATzbPQznEnDBso6uc99MDx2TBvBDJeA17hJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786652434; c=relaxed/simple;
	bh=1PJiUsCDmXs+VL7INMMWvVIW8SOLMdxrEj5toIGTYEQ=;
	h=To:Subject:From:Message-Id:Date; b=Xx5MpG4xK5tz3qiQXw5W1jxB8q1wNP6bl9BXXDaVuqpkLuKabiOzopRLR67R78JgaKXLjGIkZLNmrkCkhnjrxP3EcdnqWlNYTxae1Z5jVqDvj0A/3CiEE7Z+cLYhPEzQG5cdLnqt5TlAT7oXUHtiAHNJmSTQEH8c9Z+4YgkhU44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9D6d+Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9D6d+Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074AC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786652433;
	bh=1PJiUsCDmXs+VL7INMMWvVIW8SOLMdxrEj5toIGTYEQ=;
	h=To:Subject:From:Date:From;
	b=H9D6d+PekPI1cjJX09gJ0ev2h3h9HiZCQeou1sJIHRn6qksuFnAAZPYPhusISZ1ZS
	 aZsDrwIlc5GZ+Jtl1LwfeLLzfIePKZPGkPd11muoI2IIW+Fg3/PB7pvsaBlDjrmej0
	 KQSMvL9AVV5TgCPqnRTLuW15PgnQmhQ21LvvLlUdySohQlVX86epKScYL9CUgvB3B1
	 +dF2PHVSIRyXEjKxMFHG/cOxvRO+KloFrB4qt4OBx5YZkLFg+ORDf4E4C7hzcmdqeY
	 KPAjz/OGsCYx9W049gs9hwZMNlyvVEEJNeEQI65Id6qPfqnQfGEiRGjSd6JpIi0oSX
	 xS4Et5ZSofW5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFCC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665243368.9101.14725718997852038731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92d4a6a9cef902c0cf927dfc46fd524db01646531613cc701c4e3852e95c8c9
Date: Thu, 13 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786652433
