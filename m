Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E0A1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647259884;
	h=To:Subject:From:Message-Id:Date;
	bh=uTboYcMi7/xbQ7nedhbEiidsOKZNgQPX9Ekldi4PHPM=;
	b=YsPzf01DEw0Iu6A9S9tsVuDLx1JYYbQORWHDoqZ/RZv87epd+FqmwsG7JKiedgV/
	bfqLpc3qZrndhTUJUPkdCt268RF0LL+ZqEfpKxBvElvp29YRC3RDIhFqqJrMvc/nnPx
	1TrRUGUVg5m5bWLOz5OYQX4MbhvYyY6j9cHQTU0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647259884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uTboYcMi7/xbQ7nedhbEiidsOKZNgQPX9Ekldi4PHPM=;
	b=dHSD5EHLk7VNNjmhYtMMNYZaxNAx1rUJTD6cYymDIeozpJBzS5UZKC5dQQvBXUC5
	dcHHMtc4hqYyB+UMkyTGiLk8ZTcJQW5jK1fbviA4jlujnvs8IhD8abPFR3RmsgFElc3
	RqQEKVS/lLqkxvF6a2/j+UkNaqH0io33LBigwZbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88571cf6-9bff6722-06f7-4477-9a4e-b6ad6a218bf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 539b73626214b221937f6f79fbb4bab7ab95adfb1076d1592dd990062cec649c
Date: Mon, 14 Mar 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647259884
