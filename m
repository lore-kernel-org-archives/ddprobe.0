Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D45A19007F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738002354; cv=none; b=dCCAdMGMcYwHHTdtkbzRlDXrdc7R9Er6ItT3k4tFvJD7iThDUyZvRa3MPihSsM7DeGupsBZl1WEQvRqHlWFiphOPuJzQmC81ZGmozHXJl6Tf1essgERt0Q0G4bWwIStdsSsDpbBYjXS2D4rTUwfV2cdGYmemCIv72t+8M3xyKQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738002354; c=relaxed/simple;
	bh=WIFESTkc0TqhjDBlUZhCG89FIphZVVQvhLJXef52BPY=;
	h=To:Subject:From:Message-Id:Date; b=WOpz1a3VmpEQXCm77e4DBIyF2mxhOXNMtGMXz7QPCZGYyfw8h1IR0ucHzFAVow7qJVi+pKUGiF7/HT8fmmVd2QxxyV3lnxhUqGXSpJqROIg5PL810aOaQbYJe/kNZFso6DfVfSUmA5FXHg2xgg0CUsX+QpDOuV/UNq6uun2nAzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx/J7VUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx/J7VUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2516C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738002353;
	bh=WIFESTkc0TqhjDBlUZhCG89FIphZVVQvhLJXef52BPY=;
	h=To:Subject:From:Date:From;
	b=qx/J7VUDroNPNfhNFwFe8GZ19GocEr+1hQlH1LSfY0SPy4pQSlYDnGoPYf+SeTsNu
	 tSCBNxyHgnCEwgifymm160KPGHBZfF5EiVurXnIKxbJsrhtK66nLpaIJU1qCm03vP+
	 KtF9EUcK3NaXHe6Iw+9+MZl8JsqYlupQ8GEGslAWhYN1btOW1Fj8KU+ZbzVDUI8CpZ
	 adxCKIA/WFfvGWwdNcQhwGWE6naBQ2nsSL5aZPaM14piCWUxgyOuTq0xKgce2cQNzZ
	 wsx+dDaIjagTFNKJIGEBNW/mzNX2AAr9Ue34rzVUxd7+2OC0eEhAf9MUULKZcwjQJP
	 FI561u8LzSX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD8C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800235367.10638.15872072067510416012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171d02303541031a090059427b0c64469fef56794394405206afba51cfb6a356
Date: Mon, 27 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738002353
