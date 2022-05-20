Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D472FAF
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 21:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653080460;
	h=To:Subject:From:Message-Id:Date;
	bh=lyw46a22AtnWDTZdlx/g8KMFDpt0iIIGXkViL9Crk90=;
	b=CVM4/jHdY8Db7IFo/O6yx4kPe5b32DuH2UxjI0BiQbfGP6jhcSD/LcLWqBnEcKjS
	7umYLuSwxZzUY5QZ+9gIAsT6fCTBLj/vpCMJfaxhn3Cs9V2dvoKpBK+BSm3TzSHNV0O
	vL7RILrmPzCsw8qtuweZ/q1/L7ZLDenGOf6apXJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653080460;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lyw46a22AtnWDTZdlx/g8KMFDpt0iIIGXkViL9Crk90=;
	b=VM/hYVx7iCLW2mYcKpH5Bl2JLwrILZXMCqx3nAevw/JdNLmyzflwhivv7aBHrYlx
	GXiFtIJ78VZPPjEbUvZ3lp/g4aHH5OBQk9ri4haUpMclX2ebHzRPiQ5bhD3o7ksTGCY
	wIuq7lPIOAxYtPkP+EJWvwNhuSo5/CCThZPZ/SLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e346082e-18229769-0ad7-45ec-8c8e-6a4e55476b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7df5e6f6c8b8fea8e6f0494220a7fc2316492cb921089dfad28d9ebe7c3c71c8
Date: Fri, 20 May 2022 21:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653080459
