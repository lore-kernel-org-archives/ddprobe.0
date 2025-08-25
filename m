Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDC511CA9
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756093794; cv=none; b=C7gPwIA9ujE4ywR45JqQ7Gr/N7Qd9vpZkyt2kbKd7jkeB8IWQsHnVneGdU4w0LPIDsANdVASYpsI7I9b5+h9EBP3Z54DOPVRIchQMg1uIVkL5fHP0ChSeJIFcBGVYHcWvFO1/sMEJ28OWQSNgVr40U46Pp8HbU9U7V1eWEHCzbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756093794; c=relaxed/simple;
	bh=WKchMYgcVBDt7N/8Yr9l1eeGgbYWgwJ8iuNhujT5JKY=;
	h=To:Subject:From:Message-Id:Date; b=j3p1UXYTkv0xuDwbDvalaFoOAYYgm8NcjiIF9e3vhG8VEs6b2dcqyxlHppI0vVERsrI+unfYnXuRnZi0v7t4hAUyOOifG1/ZvDyePTwrM/HAbrS/zLg9fZr/GcmUo9zXehpKeumLcvvOlAfopbu+8zS76pw2XkLThi2k8KGYIJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3iEhjiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3iEhjiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5C8C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756093793;
	bh=WKchMYgcVBDt7N/8Yr9l1eeGgbYWgwJ8iuNhujT5JKY=;
	h=To:Subject:From:Date:From;
	b=n3iEhjiRny+QUDyKicP94trizvwu1L0zRhWH3FJ+ydotIMjropyxXnsx+xJKgJzBm
	 sjuFGgFseKJIewNtecj4fXXUT5M7vq1iv/cU9vUgT5b666k5ZgAVXPSHTU9wrIAxSl
	 fFR7BQPG4QdlA+ZKfGUHl7+7UTgxUA5LZx4u1BrjXPmyLyIxkthGSE/ObmSkgv2e6d
	 lfKToeG50hT5OUpbeVoaxwcAj4M0tIXj2ge1s5MQIKtnmJMB7da0GvploPdHUPeZn/
	 0BlqKDfyW/gsHhq3Jc0hm9T6YP45cg3kVUyzlFYpPWsuquo5ZKAQNjoomsYH/dPJzL
	 2Znz/Fmq2AWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E39BCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609379357.15326.6427736368735145230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a878e725b5092ab7f52ecb5a8ac98fa3b60e53ab0ba313eaab6baff89b431118
Date: Mon, 25 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756093793
