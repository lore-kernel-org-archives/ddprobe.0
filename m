Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14527DF58
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756156794; cv=none; b=DdgvR+rwC7637DqERCkgVR6BJMLIjHGP28k0zW2sCl8BZQhh8VBnFgOxbvWYq18AKU0GvzSMzd+FAXdmK2wVEEJLa1WpMHfsbVwMLi1DxJ47jt+qyNW/qos58K6AQeIEfMFkFmiE6swm+YG7h+289edseILv9wh8HF83yIljpXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756156794; c=relaxed/simple;
	bh=jFr/xD1ic1VyBVWAvz7gtCD8l3EvlNCybCONxj3SUmM=;
	h=To:Subject:From:Message-Id:Date; b=Qx+B+rhr0RrdTfwu0t5kCNPhmVfFmJ91NES183CvmsFT/Z/qf5JJ7GPZSt7yuVfBQFDrJCkTKfyGNTXkQZJywSZZ+1lw8/XBaT+4km1HLNkJBmuZyvny8tClX1D5oZHzcL+G64wz5C5JEUg6sqq8ZXCemtKIeDW5gmYGlMR1jBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB1bYtAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB1bYtAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756156793;
	bh=jFr/xD1ic1VyBVWAvz7gtCD8l3EvlNCybCONxj3SUmM=;
	h=To:Subject:From:Date:From;
	b=sB1bYtAUIhzZxQf0A6sUtqdsekXDP/ng7Z/jzFklR+6MUz3rC7AvQhTtlFNbfc/pE
	 YbWEDb8CuyVMhnBzMPgLgx0YNCkJ2owbWR2iHvTDdxF9yQ1nzwsqEKndgpHggBk2D7
	 e1y1zEWziaZT7WabR4qIfdhAkvCO08qftwgAohmeQDnwvl+ib3lV/4VNbWvmgs/v5b
	 D/yJnkjpZaBoJqi37HaYeMbwl7kNDN7yN4+FT4anWon/2O61kHeXSBUKztnOgSMfv0
	 0sROrOHUisOXfuMSgb4O7P+ApKcIGle4pxnit91MGGdyjM5DrL4Yb7rXz7ek8mHr+J
	 hLraH/KPItY8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F1CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615679357.12632.16663892761989642823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff17dd041d84e64e74da100c510260009132c4449b15a0219d7e19b688c0475f
Date: Mon, 25 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756156793
