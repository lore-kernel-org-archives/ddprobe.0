Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7352A7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658994652;
	h=To:Subject:From:Message-Id:Date;
	bh=fA0GRTEVt8G0LNEM7gImNE0+Ww132eJ/egrgVdjUg8M=;
	b=WM305/sd6rvTHQ2IWt7n7MQB49kkqBDIWphZOBkVNe0s0mBDXzPCVYVpY12nDWQs
	OING2C9awd99Wx+scUXkz2dGVr5+JYDDSAUSd91fKO/rdj0/zO2O+8OZ/PgyIg8bHqK
	ajijBVqcQgsWSiBDwS0gpqRjxX1FN83t6G9x7/+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658994652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fA0GRTEVt8G0LNEM7gImNE0+Ww132eJ/egrgVdjUg8M=;
	b=b12odActd4O5/7NFNIraj9CzdEzyYhI+QF+a0K4EBu5hahoU7JAg/YrwsZeOo8gQ
	o3bJq4z4/fMBJokflztRurBGc75M0xdvsSaCErQLUcIrewF068ieZekOW9dTzImRY3w
	YxsDltmG57pMM+M7FPcEG6O4Me5Sd2cCkmFiYICk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243c97561-791e6656-1d8c-49cb-8ac2-a3fda17c3707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b155096d7665024b6496ef0860eff607500f1a7065732ce2b542f17b731ff587
Date: Thu, 28 Jul 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658994652
