Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C175ED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 13:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654263239;
	h=To:Subject:From:Message-Id:Date;
	bh=yx7BNiTBiGKRZmw34WAUDlP8ilT2S2xsJibHbd6N5n0=;
	b=PW03GrFTDYgFwDn+W4CTCR1iQHIL8OaV8wY11cD6SZvyvqkePs57q+eHydXdUm/y
	4rMNcRJtssACYSc4aOegiDkKHd4aPp4F/iwgHrMpPQpE+MFTkyuH03kyHWxf/2J3T5+
	PzQaAZ0mhcnS6NGsEDpZMR1Zd1Khri4TOq2d6rQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654263239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yx7BNiTBiGKRZmw34WAUDlP8ilT2S2xsJibHbd6N5n0=;
	b=BKeUtyQvPbiJi0XxgrxZ4SvELNTm1Zx4Q+cb+vLy2bDfa7QJk1XYkTk3q6wAtk8j
	ztynwkGd9ajVKZIpQxDM/yI3jMrznFFFg89SH+8WfPdJl6aeYQE7abbzYjDWlirZfEc
	IzabyQuD5LfHhWHVfmsyPUqc/F6eZ8m7+Iv0w3o8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129c5d279-561ace72-1127-4778-86e8-14df833dfd43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ece109a2c14b5e72332ffa84e9ae199797d011cc319e7cdb9fcd3decdef1814
Date: Fri, 3 Jun 2022 13:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654263239
