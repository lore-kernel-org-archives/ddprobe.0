Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7C1EA0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655079000;
	h=To:Subject:From:Message-Id:Date;
	bh=gbSRBhRqKgDwSLzDBZNAgsSosxRmiK90UcdBco58fbU=;
	b=f2V9QYG+oqx71WlZV8Xrns6VbDfniaJPJiJPDzG1/ZWQoF+k8RFdwey4J58ppJCD
	k2T7bvTbFQmusIrhScm2Ix9MaigzYGsXIMgQBR5QF3rJzp3TY2deyiFmTmLL4mbeq35
	OdGv7Y/cTsXEl4CuQomyc0+DS+0PxkoQaR+PR7EU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655079000;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gbSRBhRqKgDwSLzDBZNAgsSosxRmiK90UcdBco58fbU=;
	b=AapzVW4tMxc9rWmdwVp45otDbHcUNxHD62cJhemYNNiYL5sg5tLf95M4QrvzUpuP
	trkYahLvu16ulp1fOxeZaLGO5ILh7vnj/W3UpB+WPU0uzoLoc1gtcSykRcMMzGB7xdw
	nSA5ScvC8Gx6XiA7OcP4hoxazNZqc8Jx8d+2T53U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a655510-fcaed37a-e993-4610-9dd0-20ce3e87b054-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e21610afb1c640a23a9cb2fd3065debcbeb3fece0c896a3b700c68d61130b08e
Date: Mon, 13 Jun 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655078999
