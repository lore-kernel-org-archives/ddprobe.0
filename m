Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F46B33CE
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645468284;
	h=To:Subject:From:Message-Id:Date;
	bh=fkxTbe0Qw40WvyvX/VRweLErKX0IOK8MmCm+aZW2Hq0=;
	b=jVFqIDIuLL11us+iRNEFHD2L/YxIZNEx3fB38yJS3AJ/PMzSp5qDRZ6Vty/fnaBf
	M3fRg0JZ5qB/T2DcTaMXbuqiWb0T3ZpJ051uNINXij5CAWATxerhnrVOJ0Un7i+H8Xq
	busLaNuY5jWtVvtcq92QulFb+nbuJHeJsukzKT+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645468284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fkxTbe0Qw40WvyvX/VRweLErKX0IOK8MmCm+aZW2Hq0=;
	b=Uq1bJhULwk5lrnUt2uCu7kal9PwiYPcYsCSKK5or/BU4EW6+NoUPEqwN5mtYOsF2
	6B2iXdMyHx65UuAmTzEOW9dvjZBbdVyZpi9HYxy8WbIT74KdJYpVLQly1pZIP/FmoY1
	mUcXscPqgAlvR0Bqc+J4ZoEqaE/WsJjJ/YnaAbls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d8d7741-2c29fc3f-d637-4542-ab2b-a29639c0cabb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e516fa67e74b89d762e30c0026d4d05e0fea04fc1e75e395daa5e464391faad
Date: Mon, 21 Feb 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645468284
