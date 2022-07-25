Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6C0371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658735212;
	h=To:Subject:From:Message-Id:Date;
	bh=Uu22WWYJrgBuwi7Sab7MwzTITFEKMLkiUUcN8Nc5vy4=;
	b=LtRqBBq5eRHZS2DpjfZsxA/rVIA796Ffahylmh4y+AksMElNTC31FLUiyfA4WeFO
	Uk0K20U5nV2IxeYtd3/RcEpx46oqGlXrUrbtnINYiwR734q8vv9b7RQ73wN4FK1d+9w
	82s053TSjt5YE+U7EhHFnLnxeXrff1WcbQ97SkqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658735212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uu22WWYJrgBuwi7Sab7MwzTITFEKMLkiUUcN8Nc5vy4=;
	b=iXCA5dVBvvnBTy+QsnGYuSQ/NlaUxXg+1OtFORB0dWQFI501RiuHFjWdD+PDpTBh
	QSngVS3R1Jt3mlzTvm3FJX3CjeQvgkos6cMkR2D3oun6M0UWz3kmGu285oQRacz/l/q
	CqN4eUsWQNNp+aVZmXK4CJ7knLQ6mbs/Z6X3EyNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823452b6e1-64cbfeea-4d9c-4dd1-9993-f5171cb03653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63035c2b914f2e7a43a1223b7f4d7e4f76ed36912d711737b580fefb0cce8e06
Date: Mon, 25 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658735212
