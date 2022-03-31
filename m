Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC7C7B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 07:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648710538;
	h=To:Subject:From:Message-Id:Date;
	bh=FQ6k4BNNQl+8L9PGL53WGEtAtbbG7dXgp2gJELJc5PM=;
	b=XIUrLK34BmM+RWbHpOXxLY2Ph2m3SgtFwPD8d+lncWDkWTjG2PViBC+eQ+USQizQ
	/pkexjN6nJogvLN6m9/wf46lHIzjTk1jw96pwUZo9kMwdtSxf5zk2xPVXU+RDRWQheF
	C6lMGR8gSINCt3Zwht8jdMi4jjeBc3LyhieHhqpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648710538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FQ6k4BNNQl+8L9PGL53WGEtAtbbG7dXgp2gJELJc5PM=;
	b=Jaa7r/qO4SuZZMMj1CgoTDrbCNEiDqtpLmzChGxL+/GP7n5g86ZjF/IQEPsejFCu
	LNzmTkRVLAHIG5K8LJ/XfVqOvXTKV4TOsApCjCAH4iZiHpoBX19N6BJ63yrAAcp8I9a
	x4aeUJhsr3VUXTR8ytFD74eIjgK9SECvTycPOfNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdece544d-304755d8-c98d-409a-bc8c-8958d3b3acba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6685c844f3eaf15ad0fea688a8093f7959f9d40d5513042b22c002320fb44f76
Date: Thu, 31 Mar 2022 07:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648710538
