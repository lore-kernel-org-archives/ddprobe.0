Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0266F2F29
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653911099;
	h=To:Subject:From:Message-Id:Date;
	bh=+d5W661ezTXD+aFpeZ8kpYQVUPCl55WpY9fqXiVrz8w=;
	b=IbGBCdkaJ7NJ/VTSub5IjfuAg5Qa78dMNO1zBMN+lIBWz9tYIQHg1BxrLQcJ2vxX
	tpb5b336xOPIitGWQHEf8fw7nBYhsVK+SFdVayUdPbNp0wqySeH8K6u2ODhkg2369gH
	Aq6HRsJfAbCie+iQGh57Ll5nRPlv/5Kq7Od+gBoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653911099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+d5W661ezTXD+aFpeZ8kpYQVUPCl55WpY9fqXiVrz8w=;
	b=a+ZaA+TWtcLyCsoEeUZNzCL/l4Z5JWmg64VlHOgLG04su/AAWBpLKdet2sDcq7K/
	zMVNZ1cLsj11bKGRIEycJHu1Jeel+2qtxBDQK85vW+8EuhBYW/Ad70Smbmcpa/xMImP
	HadAzZG+MbfrHHEcDlM1JBKJkNGb2+K2ssCteRS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114c897b5-a904e27d-7d2d-467e-8011-6571ad673967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072b27c933b4e7aadb24b27af43eb9ca3b859ebf38011161a2b46ad847897fb4
Date: Mon, 30 May 2022 11:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653911099
