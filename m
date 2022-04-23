Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A67C2F2A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 16:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650729958;
	h=To:Subject:From:Message-Id:Date;
	bh=lCCPmL40B27FtBnIAjkK9XIqe3dfDokAeP/PP14wmZY=;
	b=cqh1qncTWR/O53TWiNzd/M+6sPcd9seZr8qpZjrDVVJyi4J/7yGbTAGfkpnqCONY
	M1czOJ7BXgU08kLOw8bwqZcFVaTOn5pvQFtQItyYO58nwkdDP3uAp91U5+sum3Jf3hV
	eyVpmg4xULdtSV6KT1jfSiynp0ft57GzPpLMdc/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650729958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lCCPmL40B27FtBnIAjkK9XIqe3dfDokAeP/PP14wmZY=;
	b=Ddk0EXidIZT1jrHtiOUcE4ksKXuw43OgVRLHaN08hmkUWQ2UfqM3aqif70dCUnmg
	nekLW+O4bcR0OwfnsTjr4KVkTUxWvWGi/5fCtSZpAKM+DA51uNKdw0VrgpUGmOLv0uO
	VfK9tJOq8yhYhiQlECDahdWTVutlVmjaKXKrCQPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180572c3ba9-c248a083-103c-4f46-93dc-d267eddd578f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ef5e5466eeb9a4ed4ca7b2e2be78667b304819610b358aa3e485a03d033e175
Date: Sat, 23 Apr 2022 16:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650729958
