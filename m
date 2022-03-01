Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1EB5A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646132785;
	h=To:Subject:From:Message-Id:Date;
	bh=uuU08hOtaaAwftBNetdcXe57OFzswrrYkf67Im3/AkE=;
	b=VANsEbzgtlYsTLSkSvssdulCmVMY96np9cWzGqqAJwwUzlOlBJatdDslf60Gnzqp
	YJke6HCOgJRvkMRYZ9b1wMZWvomtNtU3A83YO/Fc47f4QcPRkw4Qz1DCLU/ONVeOqDF
	X2cHBvtit3zMXsT/uJDjGMorO9Av23XpRG3y/wbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646132785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uuU08hOtaaAwftBNetdcXe57OFzswrrYkf67Im3/AkE=;
	b=eDtwUklM25zDZCRm7mV6FT2uIIuEb4XkMpCPWIBANn/Kd7M6hm6ap4OaiZcmIN0W
	KoHvGXwtUniUCyyCBgmg3XDGdfv+nMvGMgn2LB8DJ47+S3zZuC+4McHHpiBhq5gJekm
	cGgkkr6uY7ybUnKbTELv8AFp/JX1Bbi/TcZcbyJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4528ee6f-dc8c3a8e-f304-47c3-b5be-bdcdce7eac22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 060200c06d35f9c89eccf671e04b02768bf46be17f9dcd3df51d28a19d4419b8
Date: Tue, 1 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646132784
