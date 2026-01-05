Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D65310764
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651234; cv=none; b=JH1i04FcOdhWy4+w0Mfn+BihYM6Wq8X4wfZEdMKU2thmOqg2PiOqk6PjjWOWtV5ZBm8XtSVKlSfDxwjiUnEgDS9dsjsISoXI04dXVVs6zYgahpVqTc1TdSSY7uAtNSLyspqH+MY2N0s8hMfhTW6a+1NS3t7mD5zMLkCY+c1XaCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651234; c=relaxed/simple;
	bh=YnaWBT2RuV35+WP0gpH8pzML0HPFhJr/LXNnlvJ29pk=;
	h=To:Subject:From:Message-Id:Date; b=h3bjlTw7dScTWf+y/s4Ub2YncA9ArwQxOjhfzZc/Nng266ZZ1lFTAMdnEX4DdfJkgQMqK5fJWpDqsTST2Ix4dKH5hjW0eszIqZnp3N7FI2XPSG1NN07Dt+Hjm3+HG1eRYlUhsfvd/5yRy9KM8keThRcatPzLXhrHGiUUQWdvTBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl5FO5BO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl5FO5BO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D8C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767651233;
	bh=YnaWBT2RuV35+WP0gpH8pzML0HPFhJr/LXNnlvJ29pk=;
	h=To:Subject:From:Date:From;
	b=dl5FO5BOcpazbY6l2QklpiZ24TOEPD/wqKN2dzycx57kMxMFo1ERSSAzZsn3X1Ex7
	 IeL612XhiG8U5liXfqeH+fCf8U+i/bMbOv7Pbhs7/7Mls2nVP5PQmLA6k+FwvmpSK2
	 tn264kyG8+fBdkxhFl2EkAt+NVqJKXwS+rVJKuIwkbk5GWPa0Jmm5+8h4sqOE1/PS+
	 w+VhpcyrvZqpDmC/3U6w8QYgOXxYQ56ZU4n9H2lSkI4MSubn/e8BtyzoMb1+7BAGdX
	 04Cyct6lXKQW3TuO2WsQ8Nrzz663EHI1mRaJRncWaXJQcRaOhrMwF2/ZLjgy0ie3Tf
	 Et1VPEwjcLsZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B1CD0416
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765123357.6058.12245058988772978204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ecdaf840de9e257c3662487a044557abf643a67f320d17c9daa051795fe5cf
Date: Mon, 05 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767651233
