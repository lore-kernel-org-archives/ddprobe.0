Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E89257F
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 17:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648573918;
	h=To:Subject:From:Message-Id:Date;
	bh=qhezLhwocjS3tuIjchqi02eMATEHDxOVPmxpDTVfdGQ=;
	b=FgkSKSQQzdvy1JhVvUNelCbQngi+qAan5+GOoGWQ1DNH2FMl4UdYyUcHnJWnfDpc
	hzrVql+xIWCltRSa7+7+mB/VK6AiH3mackj+nbvbYipLeWzIh6aNTbTYMLVypwaoYC4
	wya0nAAGbBX4RdAHB1lsrrWnrFMRlQV2BrNtwOPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648573918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qhezLhwocjS3tuIjchqi02eMATEHDxOVPmxpDTVfdGQ=;
	b=KcrfxzmRWD0H47wpJYawFHhXeBTUtQ5SgndzbiMgFi4d9He09PetWVqYWYELgRmg
	J+hpqdYK/sXFyG+MAGS8Zu3lNew3MyNE1zL8GuhF1yB5LdsrLX38MDSTk8f1Lyu8A2m
	Mbp3YkN4Qa3Pzz6NtxOO+Gh9QinISu3DkxkRIMrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6a9ac6d-714791c6-e160-45d9-9aed-a1a39a887c18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0823dfb7b89c88c378fcc39a14b9def48bd9d3f06e40a2fae8e20656b4fc7284
Date: Tue, 29 Mar 2022 17:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648573918
