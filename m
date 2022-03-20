Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA302116
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647780085;
	h=To:Subject:From:Message-Id:Date;
	bh=4NSV9p941PMjpI1OIrAix98Fl5vgGkyOiJCNzWRLzf0=;
	b=C860/CskHUph9SuMc/voJsnQmHPi4ACo4Av5DcpD8Dy7ng8TC7K8TIXPREjZQjnr
	7OBDJdRtOqXGHa2UmFsD0H7YjihSOGZsMkYPefTkoWFN2ixpmzfOnABPEOtt5EgNIjE
	NMwRIax3tMFtHx1YXZIz7qNgjzZ0StzN/DVvoJ7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647780085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NSV9p941PMjpI1OIrAix98Fl5vgGkyOiJCNzWRLzf0=;
	b=fOroM3FqRvGTLgQwc7eCXB5sEdjOob4f/45XU+sQVyGo0oZ9jaGG4d+w792otT9F
	pi+jWHzZtDMM1igZJdzLPo11E4aBTzoV8Fz83TSekYgosDcxmc5MUbebxFHmBFRjxhK
	HgeODNAimLOB54EtOrHiNAuWr1gCFQQhzMNg+Cxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa758bbde-8fa51cb2-f0b7-4ad2-8398-89d49aefa2f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505eb88073869ecb2c12b2642d8c983bbf9329ff3b33fb4e4ca72bf998ab6671
Date: Sun, 20 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647780084
