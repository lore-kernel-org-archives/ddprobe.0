Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2958017E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658673412;
	h=To:Subject:From:Message-Id:Date;
	bh=epxjPRr5NeEERUpWWrCvojHE9XtSvrNoQNnQdg8EWds=;
	b=OiqRtaH/IcFGsx0yZNBMxq/jfIDCPKuhWYsc/fPxfhuHBUqdMUnsYL0GG55WUydJ
	rGnxtEr8KGAv+CcpPFgxM6JfPUeqXKFxp7AuZyFQ6u3o3U+r0MfIiGYKPeWodRyBaxh
	r0OnfSY6Sdiif1ldHocTkA83z+jaOSvrjbJtzpEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658673412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=epxjPRr5NeEERUpWWrCvojHE9XtSvrNoQNnQdg8EWds=;
	b=Q6oaGAhnOYPMv/yslVqKNf4o3MNZddi+8JlMbcpa/JK5sXZ1PUUCvr8SBQiGEBv1
	51rZuHdAqlAg0G2dn7QBaR09yi6gwrhnGhizCAH0YAAVgpT0VanUcZ9F/FzhUKU8iED
	x4FVUwa11Ze99fDWkYluPzU3RVfIbjsbVz8YdSfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230a3b8e0-224fea59-764e-4794-9914-64e4d5fbb5b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4dbdb63f0dc246cc2ad8c22b6325f85c129d8f334e61629fffac6b4c381983a
Date: Sun, 24 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658673412
