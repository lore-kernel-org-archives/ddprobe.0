Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2064A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645981584;
	h=To:Subject:From:Message-Id:Date;
	bh=kDHX1ePI352hLRZCQ+fe0YF1SZBr1xm1zLfWnzTRtLc=;
	b=fer8cQqS7EvGKK9UvvX15fm1JJUVGz/HaboRmvCKUPqjfJ+9Dy6w6TNOR/h0WjYK
	hDpba79xIa3Qn1CWPw+SW+tztLIoGXx0yOmSULxkzWY6VD3TR3cC/XaG19iI841NGCn
	+SwYPPQzgnmpVDkWn5FDppPr4VCI9wzhu3gw3/tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645981584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDHX1ePI352hLRZCQ+fe0YF1SZBr1xm1zLfWnzTRtLc=;
	b=h+9sHWKZ+Qf4MVMOGTLtkh80HopZ3c/aWOxK2FpK+SsDT1XaiqrJCAGFEu1MFT0v
	0C4GiEqA0uWVdJGNC8oPNVbxMpPL7sQNydg8tCWP8n9vF+NE1DTvrGxvna33ne0qo5+
	dOIwauS96/vRBmB4gs34nnFYxJbksgW01IFLKrH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c25cd7e-0edb6efa-4876-462e-9c17-1d5213ffd0e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d76f61fb8727b06fc660b917371fb3fff5a7347bd2ddaf17db5faeea4191365
Date: Sun, 27 Feb 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645981584
