Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEF92248AC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615394; cv=none; b=KI/NBwiaNm9EpPsv7L+Glj6XA31ZeZgeqGOv21eogSzKQMoZhLUP6y/HlLbgsdMbkEZLtX8gYJgoscmc0mzxpx4DRa+scXKi3wDrB7enoFr5IGBtqWQ1QhO/7GO9HC5kHwZh6PHTci0SJD0ZYVfwJQIzn+1yq1TXyD+S8hOXq9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615394; c=relaxed/simple;
	bh=wboq3G9Pxeck/fZKudCA2uIKj13wLKr/Ik/RFXE4gko=;
	h=To:Subject:From:Message-Id:Date; b=SSY/uyBrKmzn/ZJTrGVY/0sMYpsWvadxNpC0Z483mMHo9xhHGkGtVtgxrud+7wOj+wJscLVsNaV5z8qMHrc54cgYdqmkNNUrCRVTuqH514ZSuQwNR8da3p+k2wmXj1wxfpFl96H9XaBta+tT6J/UCbH7Hu4Ss4qgH+aZ9HtGsj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqSttH9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqSttH9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745615393;
	bh=wboq3G9Pxeck/fZKudCA2uIKj13wLKr/Ik/RFXE4gko=;
	h=To:Subject:From:Date:From;
	b=XqSttH9KrDsyzyhWy7khbUub7J7CHp7LWU0juz0gG74Gm3aYmJbgbuIMykhA2OZbo
	 FdbEGDtKAIO6eBRbDfD/aLW1eEGfFYUKfeHSLKNQkFgMueFnJ7ee0ATHv9IxEOUYWu
	 5fGbzsOeg/B+oeuPXe5fWNGHdJFn1p2nhvVM7tXInJCQL/msi6ZQc3pRTdg7VqFv+Y
	 PbjRy7pUCIUfhqGtHMEO8pTNbiQNRU5x3HBUuN9eMFIuLiGi4ST3QMqug7Ca2cNIPc
	 FcVL6q2bVShOYmJVIJR7zCnNq/Xh78J6vE1YjvJO8ZSSZzTT0yfXcIKw+geGsaa5ZC
	 tog/yGVZ8lrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0BC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561539357.16902.15248132034718482647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103bc16e517c757f1a7fd38977697ad1a39258110bb94b08d5158d5ba41029d3
Date: Fri, 25 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745615393
