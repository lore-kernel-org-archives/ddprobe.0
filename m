Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248093D60
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 17:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651081798;
	h=To:Subject:From:Message-Id:Date;
	bh=LI3ZGMCJEZW8ZNvTa2wFEc7qY7iFEf4erT2kYdXeZjk=;
	b=a+OktTJgpUdX3w/2A4c/Y7roPvk2Fom8q7ot3PV4/pp3Yx2ZnSQN75+TWRFk7/dQ
	UXdcGlWpKMYDGy01nPuQIKPtNFGrdYFikbsdimmD8pfcLzqeNOJIsjowNKm4Z8tn3pO
	QVm3J1D+cKPYRHe8L+x9HJEi/Sppq42GzkrIKS58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651081798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LI3ZGMCJEZW8ZNvTa2wFEc7qY7iFEf4erT2kYdXeZjk=;
	b=PkVmIuLDlojRmOTh0cbCZD5Fm0I8rLYaivMEqYdpxwP+OE9zi7DLJL70NLTXnt4F
	rYH1YS2MieqS3O8QZw1oqUIQGgmRlW1Re+3iz2sTFbDYoQD5Har+U7zuF1k/iybiIdi
	hotMd2HqvY8FwQlxH2bbdSGvvjyEMjn+Cl4p0O7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c24e24c-36818865-c5ef-4910-9a0c-5768300760f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3163e08fa4ee399859dd35d84abd29d182ecf5f6f0c4aaac747917bf1927fbb3
Date: Wed, 27 Apr 2022 17:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651081798
