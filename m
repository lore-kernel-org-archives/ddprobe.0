Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0491AA3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659678652;
	h=To:Subject:From:Message-Id:Date;
	bh=c0/podn+sn5VeKW5RmjU7u79QWbKoIeGepBnW95mFGU=;
	b=D5BApB2PD4/TA90tBMd+0XUZJDeJEgUmj7ySN853DIXrYZH7Xrhnd7UHC5Xw6fsn
	VgEa+crXBOcXsQiwpT/PRJ/tmrk+fXiilyIVRmn66locDf4Fg9lj+KDL8IB2fpgqKSw
	ZE9XcvJ4FqsGmnXFnEaipBfVLmVUDUyOHszkY5tw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659678652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c0/podn+sn5VeKW5RmjU7u79QWbKoIeGepBnW95mFGU=;
	b=D0jyBXrR8OO2qh+kinLU0OCNxXmhhd/ss+8Npw4xW79F1nBSAzMS9KNwlhWYFUKp
	DMIxRt16KaCbINiaKwS3O8ImXkZcjlwkoI9t11v33ysNKKZTMZngBPPo92wkI/+Vm31
	Dv1HB2uhGVJt5n4HnMMmfmE+cykl9TnlMhmOAqOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c8e78a4-fdd7e368-1ebc-471a-b331-6fd4d290006d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e1359af44ad9666c2b8f86a41ce105fc231486f0ec90e74b9352f01a51637f9
Date: Fri, 5 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659678652
