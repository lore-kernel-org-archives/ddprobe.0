Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364BA1EA84
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783710514; cv=none; b=gqpHCYKwNT/DKbpp51Qpkcxckhay1bx13nA2X9sOfPZEN0wOXsXWyl6EmQhLb7YMREOeRqBweXBOW09QN1riT6m8K6R7FnJtPNQFSFzVN1QgZN3Cr+EuRkf8HoTe90641U9e+KZ+kveRIlKMkSgfT+lkOcljs/96KXfuQPs/0Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783710514; c=relaxed/simple;
	bh=2k1MySpDAH6ufkCDaGuo7U+8vTm9RxuJqHgcV7eLydQ=;
	h=To:Subject:From:Message-Id:Date; b=d2LMKVD9C+lGgcxeMe8W3mhknyTwSDc8NQteYRFqykCIkD0B6Fr8PFA4hw93zNXrzU8wrngPwOGiONed5bFsbfFo/Tp11GiFL+bO1k1PoWVI+3QqH7092UxvIrXVRyaIhucdF4hqisiXJBbqOsnrAD69Ikp27UKVCo1GpGw2rN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5i6eVgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5i6eVgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC832C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783710513;
	bh=2k1MySpDAH6ufkCDaGuo7U+8vTm9RxuJqHgcV7eLydQ=;
	h=To:Subject:From:Date:From;
	b=e5i6eVgImVSztZo90Yw9YIZfIe85DiQVyhx7KT+CW9iCqhmE1Ixf+xm2gUh3lq9Vn
	 OkZlIeSd1eJC2/NLakGkiM1QRbvMyaAM9du4McOyREo8md3WG09It94HbERWPQGaXM
	 WmJ3xntfkjO6G7nK/s8nh9TLhUzNSr65uPBfwNMn1QVCXxg/LSTqJXfmtRq6uJnHBw
	 7N9pIgzrkZ+/5WQaI0ZmBthvC4yKhaPH7dc4IcO0/Txy7Et4ZPt0nP0zW0gNAZk6c0
	 AvE6kGzAJ7Ugei6gkWqfcErYEXrIvjXPimtgcYEZhU1TrCzNZOAxPudsp1aCvctFnS
	 iOmAEICSqBPnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95DC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371051368.2261.3721909213284015466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9539a82cbe15ceaa968b500abab32cad87d6218fc437de3a83712f1d029262b
Date: Fri, 10 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783710513
