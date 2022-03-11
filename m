Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695AD7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646976984;
	h=To:Subject:From:Message-Id:Date;
	bh=rN3u2pVXNP+QWacohzwNNtFwNhn402J8wcH3lv3Rvbs=;
	b=RX38Lf+5D3DrVjvFdhn3uep/aI5iLM3W5vF1hNWLw8DJxtenOymL9R1zTaK2wSrV
	usIewkkQHodMGA/XBG6QssQ0pb5pIAayrLxZPgZht2L5GkIpfb9IUI1uxHMoOjz4g4S
	sZ8zN6YtuC+edLS852DwpmB4LFUDjZT0/KfoLy/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646976984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rN3u2pVXNP+QWacohzwNNtFwNhn402J8wcH3lv3Rvbs=;
	b=d776nI3C7eI3c33hpPAI8qTDAbxqiUH++pbEB4x9RGouMt5grb21UUMyVVEAECnD
	eVnZ5MXYFrslaQzGJrxUj+AJdH9z5f65OfO30ndhMjGFOMniq27kLdVW/kohwyMuWEw
	oKf8UM6V6CjFtLWnOQkUoCUa0hTjTf+uQvSQea64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f777a66af-7f92d793-d74b-4cc4-aa0a-0922470259d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e68b17bda0625fd941d37d6268365c611ffcb49cd83c783b2128b9758d6a62ba
Date: Fri, 11 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646976984
