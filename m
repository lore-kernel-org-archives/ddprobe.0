Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87126A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647938785;
	h=To:Subject:From:Message-Id:Date;
	bh=Vy5MICxzLWYWFxGbBBgZneOrmxm52AVrIYuUZknrEZs=;
	b=jWWoTs37KJnoZy7rN7QL2IRISmIHjNPCSwaEgSc+m8R2YnRSTqznNcH4XVQVc4R0
	a1GPDfrw3ZwylNS9eM5xFTtt8BfIKrs/AqhsWHLOoJ6+i+lFrG7tUru/t/gkTaH2hoU
	I46fbz2Mv/qZTTsK9ReSpwAPR+NXPCmoJfoZKEEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647938785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vy5MICxzLWYWFxGbBBgZneOrmxm52AVrIYuUZknrEZs=;
	b=k4ZC0kaHcJZe1ewQdg5YrMClyl/fFcSZeOZ2qnIL9gXoEXz1Qd5trlDAAK45SYVb
	GAGtr8E/w0zwUoxzDwtplczIRwHbB3oOijOdr7hOSFjH53n/vSVZTEZZFiJkYw0btTm
	y1C9tdOJfpF7c6nmWF++qZ5MkbbOsgoh58jvlEvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0ce4e0c-bba17f8e-7140-4174-a82e-ac046fae8756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faec0d4143c9b27534b2527674a9f149ecbc9fa1ba151cc13265dbd900044ab9
Date: Tue, 22 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647938784
