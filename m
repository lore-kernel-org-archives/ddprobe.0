Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD25395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 22:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647729685;
	h=To:Subject:From:Message-Id:Date;
	bh=ABycwM7qEJcYrU/HCgpGHQXLC0qpqDrDL0S0t2yy7K0=;
	b=mhT3SPl52uLHqwaW8C6poejaseF6o4m0BkZkJhOLDRj86czBlUMzrLppkTO3GP6S
	YQB5Fa+lV7BP7CPQvpH/tYODNXNuxcR//3f6sh7Fy1bB7IO/+dHIsfpC1/gxVTi8hR2
	TbAVl8LhF38+83WN0ZjuP3eHtCtK64uEhWdDMta4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647729685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ABycwM7qEJcYrU/HCgpGHQXLC0qpqDrDL0S0t2yy7K0=;
	b=Wwn4idVTIYPE34tRJBFHifVVptr6iUWVuLCWL/XjtylQfsDXjG/aJD1/5AB/K3BD
	PySTqRqZziO0ok0EddEbxjLIAeCIjNzXdxSOE0PYqPtK5oEvKmdYkngK3eGJ+oEU/J9
	7pExa4XUB7y65Tw1mf+Cz+OJXORTq2MoFA4NwoHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa457b108-063b41b0-4bfa-4421-b803-396faf8dd8ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75838cbcb113bb1aff1364756f22788abf1e3ca14b1cb9a191b5e09aeea706d7
Date: Sat, 19 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647729684
