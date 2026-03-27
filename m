Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0523016E0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774627494; cv=none; b=X3os18yTjtn/ZE7gn20cKtzBfO4BD1jyPLL+BcydJ5qvMHoE8gx3M49EJ07+lwcyvs9L+eVF5rYCwQUi61kNqcstvUcTNXiWd3U8cFwf+YOpYMEU6OaoGDiNEUBucU3SQDHWDFwzw9VJr+3CBs/AljWOJCy0FZvxQIZ4Fct9Wak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774627494; c=relaxed/simple;
	bh=7GJOHVlejd3kmZWK0bXl1jwqDEecOAL6gpRrHmjU1XU=;
	h=To:Subject:From:Message-Id:Date; b=ZD7TV+zdKFLg+GsCKVg+eSw1c5xtv2PuuHDALUF045YcgeBu/5PmNKV88+qmkBrYi7uI8pHuxZlOh5ZkSRgaW5m91zRKy1rlDCxEdHaDRPzNTtH1ZsfbRA5jfuXqoIcseRAEF8Jvs0JPGNKUAon/p+HV039TSuTinQjt8faTFYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4x5rNT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4x5rNT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7BFC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774627493;
	bh=7GJOHVlejd3kmZWK0bXl1jwqDEecOAL6gpRrHmjU1XU=;
	h=To:Subject:From:Date:From;
	b=O4x5rNT4KWlUQppUe4UxWVz/9eQBZyytZosFPjk66XvgRczZV80MHYVoQ9Bmx3I05
	 pFxqZX/Im3rnh1peTi73tN40l5knGHaMtew3j64Dg0Bed2A22hJlziIDF3b+plMkF/
	 REWt32qK69v1WZ+ydxDx8iaPaFZZF3b1f/NnuUsE5iYhLdyqC5WEJQ81iq6mBEMZmT
	 F1U45Qyz1npCFH6nU+SVoLjvwXhw/31iNkaPX42w5ylD7WxkUaYndfSqoPJz0xCFRx
	 hsGhICwR82Hf1BAO5EwBkLXtyFX42li6Wo2GZzd3U/gqFY7pkA3+5aHgK9QEqTYmsy
	 nHjmGbZjt8u0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153A10F2846
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462749358.3715.2772950868445063178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848c1a37d4382fd602ad6a71f7a5517d1cc0875eb80d8e15b2fa8a56ef44a271
Date: Fri, 27 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774627493
