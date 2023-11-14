Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF528828
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g81Ml1vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3662C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699927096;
	bh=w1rBrlyYDnM3SHHKQv950SeK+spglERyTrzF2UX0tSg=;
	h=To:Subject:From:Date:From;
	b=g81Ml1vbklhNzkUqDj1exSJu9NfRIkMR2yv8rh+5PamezJ8pBDIRVCpCAAfrddgdS
	 UfvytGuaVYUBe8KUfb48hudaLCwd6ihL6Lhr2ObeZMgO1WRdLLwtHh1u/8SAlVxeSV
	 7KhLWMf2O9BsnQ0dA8NDDgQnvqF+mms05+dhNgufw2GN5iiQDNI2NTYbdW7WmeMJs0
	 Y7H25eRZv9X+/A7AlWYDAXFCSNXjNsu9Ufo9XHVtRYk+Jy3yR4w6fRNYnERZi/AWDX
	 PfXj+cB4VcyeJVlgMWK/lTtZnUx1BFVzJH75+Zu1A4+mbekwP6MQ8HtVC4KuxqAn4m
	 5V7X3Wh1zZ8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 800D3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992709650.15992.16144353384686555929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7963b6efa86aa27668017a520ec0b640240e1111ee332df3fe94436e6bf14c8e
Date: Tue, 14 Nov 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699927096
