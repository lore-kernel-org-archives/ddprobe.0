Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525CD43DA2C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781623594; cv=none; b=KqYXbdMwv43IOSwXZTrYx5OzxuewU5SEOlBNcAe1ibPSd35NZ9VwS+q9F6n9bavUcmVOUd08jIxCs7DNsX8dmtkuMU3EJxwckO3d3uBFEbk/O45/sbTIOnxz6VDBcw3FcfBg180u97hA33BPNjo76c6capwTNxHNk6kxAvJe9T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781623594; c=relaxed/simple;
	bh=GGw1aJaxWlMbIGqeX7EsB5KBmq08OBoas3xIo2tblj8=;
	h=To:Subject:From:Message-Id:Date; b=AMBdN9pRvd+eqVWj40MRwh2V/aUyRbpVt0UtuuydM/APkPbVR996tOCsWYMOQ39ChRPbTHQ8/vo4gXFvp39sn3/FKsHq63n5OJEOyw3KuYjFmUlZoUoT1+W749IyVbF2AMSMIeD7AUZN06neeReXJYp5lH8ok4FSUyziQlCViSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6YvtkxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6YvtkxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF573C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781623594;
	bh=GGw1aJaxWlMbIGqeX7EsB5KBmq08OBoas3xIo2tblj8=;
	h=To:Subject:From:Date:From;
	b=L6YvtkxH4YBFMglwVzK/+RX+ceF9vDuv9DSAYGVAwk6s8/wN+pIcGtWTSLBgx4mVe
	 EFE2TZKtMhvUn5Cp4cX5TBDnQhy0hlA4yWhfEaazplEibhpSxGHueSzi5vrjE3vnG9
	 Ip4Q4AUM7smObY5KOiUS20ScrLtOUc7K2rrZx/dvFFLyB8KiTlnPi4skWR7F8HDXV5
	 rH34EFOeZbi+Q5MDDvWP1PYHpFxhPB8sBUSDRiz2IBAvuY3nBt+j8fOiZjaPUsT4Fi
	 rxIPfpE7noDoaY3qmDlxIVhJVl+42LrBbVAPipgCWq74hvQsJUz/0+Fj7hmAvBHMb9
	 HFVK9eBLhAglA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A43CD98E3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162359372.29676.4762169039126320223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d491adc04e192ef43020b63c4152d4707f88a024af4b7e7f86004515d4c44b3d
Date: Tue, 16 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781623593
