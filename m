Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2610B7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657307212;
	h=To:Subject:From:Message-Id:Date;
	bh=on4s5jzaq2jD/TrF4+yybxVvSFCRAOy8XUa2hjbfllo=;
	b=W81KO1ozBV4EjwyQ2glxgSDBfGA+I/kS40XDLGGJtLpKO5g3d1gMfv42K71DZT5F
	gMwPAOsc73woG4ASZ6WVmgdu1EYk6FMh6KkXrdE7GnOCdhgff+nSwRjYdx/athObegw
	HK0PLj/vznwJuuv4nsjDSx9a7VtQOrE4I0ykfv6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657307212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=on4s5jzaq2jD/TrF4+yybxVvSFCRAOy8XUa2hjbfllo=;
	b=BVl+5fynDJOKUM7Dbxb4AFoxgaOfSeEjVSO4P7+2jcbSuTJfPNr5u1l61u/zp2hK
	YEal8F75x6Op3GQkOZ2C37Xaa3RLoTAA2iGcvdA/ud2NZyT/MuWTsVl7isJVQZmQKdE
	VqmVtsa+xeUwS565RRWF1Xw+6sr/QCq1PZK49CHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df352a10-0bcb93de-8f32-4cd5-be19-8a0368f3c419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5281a7e6311df3ccb6fe7839ebb2cf68fcdc64b903728c8cb16e87c279612ef9
Date: Fri, 8 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657307212
