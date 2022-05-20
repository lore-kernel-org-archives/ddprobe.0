Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117FE29A3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653065219;
	h=To:Subject:From:Message-Id:Date;
	bh=MWXUsg8PvD5TJ8ZTxfxg8j42sZxmoRJBEULrEKXcadw=;
	b=QX5s4e10FbHOpjOcZcyXOykX6UdlB5wLPQmCDxNQufmLBJ9vhqn0uz85P2+6jxYD
	ZuD2pTj4MrPZDf7mSBS1q4fpJPnrcwnz5BmkovLKxj24VrF3PtPcoHcLhtOQHfZbXg1
	pEwNGEbiQeklVXoR4h+awpKJRObit2oGNlJIG9GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653065219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MWXUsg8PvD5TJ8ZTxfxg8j42sZxmoRJBEULrEKXcadw=;
	b=fOP6AwIHEmwjSAG1DehB3l9rkPaYOUJPNFEA6nUVhnlvTrjBNn9oRqiUZy0Z4Zwm
	9i1WfpN9mAQ8X7n7S+Rtk5koZ3CNZB0aP9FtKxgEoZW5VdPCRsEkx3iWlS37/jLLfJ6
	+Odw5speKja54xuQunwy40EZL5Va/u07iXW+guKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e25d7d1f-a8f4abf4-f5c9-4d2d-8baf-2d5d10ecb191-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072c4832acf46ddf9d3268b5967bb7c0cc22fd148bcb4181fcba98ead301564d
Date: Fri, 20 May 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653065219
