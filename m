Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0C7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659396652;
	h=To:Subject:From:Message-Id:Date;
	bh=O5ZmEv3PcBKgcJZSurMFSOOnfso3dA7hGcNOsnjnkK8=;
	b=j9Cf/c9StUorrYs1PCNyPJMqRWzeek5QMo51DoAZ+UZvTX6TOcxg5pQI/SBX2Sex
	lWSwd7gW6UoI87ruNcW6A37m/5FTQ2ByjZnWy82AyWusM9ZN7EfJmhwxJ1337oqhW4D
	V+Xh+zoGZ4A9hLCJdP+9Cj+aXZGY0bxO+jy2Qxz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659396652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O5ZmEv3PcBKgcJZSurMFSOOnfso3dA7hGcNOsnjnkK8=;
	b=jYSMpMQr8RoNdGd0sjHrXttnD48tBIpv+ZgdhJL6D0RWmnBPgK2yXNMJSGtFLQ8C
	djoTNVdYi/pXlgsZSgP/smGX5G26LjFpPxASkp+PznVoxLkQ/ihMoRSv3dEcwkjG4zW
	C07fBYFPvP9Q0cfwj2pzotiHIMRm2w/SQW3GNv64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825bbf7ddb-8b98424a-606c-42b3-8044-6c3f8b08f5ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd482e650b54790b410f19a60999c9023fede3d58e2cf778a62033e8dd557ce
Date: Mon, 1 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659396652
