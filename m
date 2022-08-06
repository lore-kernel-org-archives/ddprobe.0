Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993082F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659819053;
	h=To:Subject:From:Message-Id:Date;
	bh=j3tuYiVlcvOWYPpM4fOfpGe6yEOY7GfG/I9afIK7of8=;
	b=EKC5fhIECBHRN22aOMUWiCx+5YhfRcVyPPx/cyt7pI6UfuYsihOcDjAnyCT1tJBL
	pgDzWNDfXJYv0yNlHTiuPqEZTa/4tvycTlnmIKiBKGdQ06hxFLBv6urZOTPSDEI8P69
	84tFsiC1Y4z4UijQmh4fnetjXWlx/JAox04FCpB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659819053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j3tuYiVlcvOWYPpM4fOfpGe6yEOY7GfG/I9afIK7of8=;
	b=Fz7dPzLrPsp4lnGfVuZmwwbgw5pDqIEjWkstBE3KbYC86XfvL6c6+JfgdI5pIiUq
	X41DuWuH5P7JgDrycLXT0bBXmxmALizBRmeGi73ud3uKHyuSXfL0EH3fzeh3QjGf+YO
	e4ZmiVv4uG0z6/jZ4REMmPXwx5ciy16hiNml0+/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274ecce80-5fead8d2-50b3-45f6-9d2d-0b8c62903364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5969fd1c8e34fc56489145488ba508409352863820b33f5cb686a0dfa1bb9599
Date: Sat, 6 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659819052
