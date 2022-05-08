Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25638184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 16:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652027278;
	h=To:Subject:From:Message-Id:Date;
	bh=pewpJylmYce4W99KO1w/IKQ0VCS46YxMDSIYWkkHGZE=;
	b=VT8vljAHFGCoKAveVv7mXzEPt2RuxbrIIIIHRriqIOxh5037WFnDBhA5wzjuzpJk
	uN5O/Ca9UJiQr5QXuhJT7ZHLKGT/cqfGenQvZ7VResW1eNieEXxpH+otsTJKQMRKdjI
	qLO1PnVS/4iIHB3vA/hU8veArxBpFD8oTcPKklgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652027278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pewpJylmYce4W99KO1w/IKQ0VCS46YxMDSIYWkkHGZE=;
	b=IDPMmn/5KTAjZ1eILXPwkQwDSKI4tunM+wkIU6MdN9IjtLgOahHmIIWIdBK+UrnI
	rOT9Vkx78VUqlmxyB8+mmG0wFhw4N2RAryP5mBjhwz+qs0psWXn1Ilg6PmujgDPi381
	n61lbobYTlnA/iEvgH/5RrHCmJANN229ojvIptkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a47fc404-d62075a2-6598-4c05-88af-6c2ebc7cf5d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29dede32b445d0468948a1310c24d41490cf38b0095ac7b3a0fa123baea6dd35
Date: Sun, 8 May 2022 16:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652027278
