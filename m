Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478BE154425
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748116794; cv=none; b=TJPGG2/2fbz0H/P4uLUQUfzu3DSMh1ULjO+sQgAI/HtoQJN83er0rf7q6IeOeDvGZ8dJ2Q7MzdKLIObobOaLo1L/zcNR2JNFrVUhyKVtOmdAGwDd/5j7olcujs6lFXBF9jOA1rdPQ8ztLsLNrtq+ZZjtflN6wvAbYDD9vSi5jok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748116794; c=relaxed/simple;
	bh=dlY9oJXUDYX5Xxcy/STuAklNi5g+EfYeS7/+XkcDUDM=;
	h=To:Subject:From:Message-Id:Date; b=NZMHzY2I8Me4ivtPknRd+wfvMjHEK8XCKJ64Ovs/iAx5bQW3u0vzkbOgtkpoBfjWRXTYKfzWYRe+sLOmogSMTsseMNaBmElOhNwgi/9p59FrjC7R5am1GAs/j/ql5oE2aPgoebx9yyYszEi5Kwf1TAmGbvBExZpM4xHUiVCk4I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3qF6MA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3qF6MA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748116793;
	bh=dlY9oJXUDYX5Xxcy/STuAklNi5g+EfYeS7/+XkcDUDM=;
	h=To:Subject:From:Date:From;
	b=b3qF6MA3VyqA26nqUkROtZsGIZfR2iR6huKCVhgFS/Y++a3GYgGqFDG06x4ZaMS+s
	 ClfcQcpndAC5OmP7npURt2kQM/dqhLXgTT4JnrTHnCxfQRa+EdVU7CkXyNz5uKMMty
	 yVaYiCeRZ9kJAkrFysPG6eTkSzRLQO0Ixren9ndY9TZqi/dGqrnC99P3b1M7Na8w/3
	 sx6Gv7bqBzgFfJz+KatkSrIaZTLOIUQjm8VPAF/uznJunVCpUyZ0WkYrmBY6v3lvmF
	 1mXfHwsUafUaKvR0igIZpvVN2hliSX1ymB08OjyBX1aWc2bzWwh7QxmOzgdIQeeRHH
	 pZBhRJk9VQcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811679357.28862.10688328122303373381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8801b3fdb86145cbde7a3d824610e448eda80b2a7c70fd7ce9106faa351bab98
Date: Sat, 24 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748116793
