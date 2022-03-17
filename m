Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEBD2F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647486085;
	h=To:Subject:From:Message-Id:Date;
	bh=H5I3pffnV9otl9Gs2sKnonV+sMWsV23toHUNUvUVbTo=;
	b=W6A4Pf5BwfPPH6WZ2PDNeY3Qe6FnJWcxrwrTyTSIJaaxD1U5VLJrUtuaoSO+Q76L
	ak+Mrp9QUcVTA1REwNyAtEh03/2gvgmCxYUVAv2oX3l8HGvo8IFUtHVVK79VNodgeba
	lV/TkSs/3pS50vtouC7AoSdRyMHWfIUgiyidA+4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647486085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5I3pffnV9otl9Gs2sKnonV+sMWsV23toHUNUvUVbTo=;
	b=VkBR18I+dI6THeq1YXzJ9xBl9gi7otm7PFZQJStOFOhi26EpmhxD9f+pzv3To+qF
	tpR6xI/+r2g2mdUZorqqevgnEW9ZY4SOwB9dkvMEg54FQaqNMNrSJwN+tMJEi6xnKzO
	I75UY9+OwW06bQTEHU9F/45wCDm7eY87LqoRqT4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95d2a69a-48ffea72-4565-48f1-89ef-eed0c5e75499-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f3e8f846eb6e71e605cb40ded1b60c0f2fb0887661cfe3ba1e9f336f848825
Date: Thu, 17 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647486084
