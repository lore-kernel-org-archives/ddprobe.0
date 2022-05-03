Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5927193
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 06:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651559578;
	h=To:Subject:From:Message-Id:Date;
	bh=v4aih4stgGSnMrJt1+uaMgZfK2Ptz0tt/pT6AV4RzCU=;
	b=Tba+xuFj6oUTTlUSY/MhHKynx5leClOSbSS5OlOp2MgWlHJtkjZtImrF8IZ2znfq
	V+gn0uc1ND6Cw2E916JRfeSPPpdSCBOBk4nUkhVksjsI8wZESTY7tS7hnCYPRZP60wJ
	PUvGvhnntqlM7Qp6TbaPyEz5Z448Tuq8E5zIu8Fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651559578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v4aih4stgGSnMrJt1+uaMgZfK2Ptz0tt/pT6AV4RzCU=;
	b=WI0PyK3D6iWbPBIdHRa8sJWpXSKXzO/fiPf8wQJ6x2ac9cSz+d7bG+X+goOUkvac
	H5z4z3OFhsrXlHEcBAhIeb/F2n/ul/bjMdHmtpaTC++ZcfKNAhmvhhAUuojfN6rVI7N
	wLtz8wim/hSYVf6SAWSplof+8feGS1vITwd++0Q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180889f3a9a-8cd15153-1a02-4b31-8df6-b4f019363374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 353e264c6c0c79b5f99abe4fab1867a2fa0ef4b758dbf9ea5d7f772255d498c6
Date: Tue, 3 May 2022 06:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651559578
