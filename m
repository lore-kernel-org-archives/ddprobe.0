Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5E2080C8
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761496794; cv=none; b=Wy+5dNGzglYYZr0XPfaSexQg+FNc8CYE8MsXYDttPu/1XqLBcRL75yrGfVGfbZq8gKvCB1gF+6yas7XCXk1b6Z/uCwdjDLD0oC7pN/34DogBgAzcIxkrrUQHqkrexdh1rRRa3YNEqSYSLdmH7eTI8xPGjWA1sHmqi556bNV3HX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761496794; c=relaxed/simple;
	bh=U62JdGjSUzR9IeAkJrlxls5ECqWY9e5AFOoB/jhJ1lA=;
	h=To:Subject:From:Message-Id:Date; b=fjMDdI9QYvm/T3RohKB32UAWwPp/iF/hJBSnE+SdfMPC6StZ4b5NqQiDMq1Ctpmz3Amwq0QciESl6nSBTCJ2hUyOHsZ+28107WMWrkBOTPvMSNLcGsSKsi0fCbGKBKCOXiKxf+Eu/lbodAXv3fT7GsScVKlzfizbWYeuWG9OVjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaF8U3MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaF8U3MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9C6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761496793;
	bh=U62JdGjSUzR9IeAkJrlxls5ECqWY9e5AFOoB/jhJ1lA=;
	h=To:Subject:From:Date:From;
	b=EaF8U3MXn25pyJ7olmL3q5T3sk7xNp4u6wtFyRq3zYoS0jRA/rbTbvqfPlWISkE6V
	 lLSNPQ/uFzzdpLiNE/bJJJ0UUAF+Lr54NlNGytxZkNp4BPCvt38/MKf7bLcq2jQsln
	 JU/E/QAZ2QYflSaVcbpgLXCU7JhZs6U3nYSzY6KyNnbGfvdfibYENt1orSWIGLcV4G
	 RN9wZtonFO9Kb9uZLOJYJuE+X/x3fg1eWXS4YIWAawoeTQGP/T6fFE1ug38D8WnjQ3
	 3BAju4KVTezoCkrIY9orEgGUfkKrLdu4eBOS8yl2hMTSYZ6XwS2W+DonbIsxwS86hz
	 a4xdSCLwc+wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BCCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149679358.24438.3277143454889492527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae73c2fb644c7363902ba977f8508322c98a48306fec3ceb796b4282df89296
Date: Sun, 26 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761496793
