Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE3F2F2E
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659890452;
	h=To:Subject:From:Message-Id:Date;
	bh=vKBaXSL273Sxdrd3Spz2ZfCinbP3J3HA9jUUkULtN6M=;
	b=fdJXftuBrTZw8fqEuj8SQh3YgxvXUTxSOBU1g3VGqzLG8YVLiXuCBOes2EJbpVn4
	dFG4WYctapnxON7aJ06cx0hhQwL6OfoiqvANQRDZ2l8xaeROnp0Mbrei/uMFXA1RtWO
	/vxLBOaFuhv9tni2T11Xg7FrlCEMzfOhmpLkdelg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659890452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vKBaXSL273Sxdrd3Spz2ZfCinbP3J3HA9jUUkULtN6M=;
	b=forbhbDsmFCNWt5jEuTVVhHSntp+gYj0f9jChtF0bibikcWv+c0GSBcFBr/f9OwH
	PB2BF4ysVBqfskMfv7JpW36pudRmVVXvqC7XsV9sFK9fPJxwEaKcBZmamlT8gRdEVHu
	OWjkTMBPOdmaXiYdaTkB/XmikScPSFSCxcsuXrJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182792e4850-abd10321-3e63-4a3e-8a32-417dae870cc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24e7dd41d98eb465dd0d8bc88c15d48edbe2de866bce1be07cc62a8a2801ec37
Date: Sun, 7 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659890452
