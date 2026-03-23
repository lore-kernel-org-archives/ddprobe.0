Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D083ACEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774276494; cv=none; b=TAaN2LT/6OnLRpuSnXfcD1VbaBBr1pqN4qszWVbF94yyQPAummlTccIo4KsZc0fXHzfJJSIBdVsOeXAld5eMnMkD+hQuNNOTlTgbN8Pb3cTKvo0UMHW6tyG15hYuY5vdEQoT8pq9D7mGofiUzYutmnYXkYFYJ9iyyyJSN8KKvIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774276494; c=relaxed/simple;
	bh=5BpmGD/4GLNbVOdoTXOrRCrgetjBxu/zJsbZkG1RwQo=;
	h=To:Subject:From:Message-Id:Date; b=P5PmL4aZIiZ5bwLRj5W7aIqJIHF4V5csLdlGC1SXIvY0DjrFcqQILnFbiI+k7T8kA3T9HLtKge9R+LbNUI0OF3H+2eJOCtLdcQCgTtZC9F6U539GdwYvyBzKsSuIy4cBNDKcEyvQjzhgGwXSxjj3n1LvBtBcepj0beGTlxTuz0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD6lv1Yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD6lv1Yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D17C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774276493;
	bh=5BpmGD/4GLNbVOdoTXOrRCrgetjBxu/zJsbZkG1RwQo=;
	h=To:Subject:From:Date:From;
	b=oD6lv1Yi8GBI12aRlZSSPyfS6mjRkR1LOL7xooOvCvVNGdBQbUxkrtM0Nz7+AUeoW
	 UP3Fq0sRu6pVkCIul96vSZIuLgQzosBJA39CsXbz37tFij/WEIh3jfvXa9Tk67B/De
	 /WBIJXuKVhjbQFV8WT+9/ftHPP41NqiLIqSOfA7PAQJAth1VysQCLAPaG7yuuoNu6K
	 Ei6oOQUP7WlO9BJBUYy/5HbIz4a1/9nx07bq/xNoIsmegJ5CExtYMBlwCUobT+qkW0
	 xEeb4nvJsc0aJVH3P6uE9rJlGXBPYe+RllbKPhN8cW0U43CJmWUKiVGKFD49FLY16U
	 1isxXSeLgvjfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDC6F4612C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427649364.29063.9502773106646767124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed60c71e91d9cbb93d6745453916a7f88bd5db8eb3dffb9a7116aff591b9eaa
Date: Mon, 23 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774276493
