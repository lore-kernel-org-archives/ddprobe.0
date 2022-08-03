Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C46D1364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659533452;
	h=To:Subject:From:Message-Id:Date;
	bh=zifU42bGW9tD+eI7ifR7n2mdbAIymRbQ/c2dpHd/mZA=;
	b=eMIS4uv4OVOMBjD0AO81eUCiZQhPlTTBA4mO5NbF41Fe4woZW8HuYY90/uAppGDj
	kJKDoGiBjWrpHkUrw2lSzCEq5LCca2q3sDZoBZ/Hn0KrSeLc5Qd/fInzrHJfboMdAx6
	pF8th15+g2irF7GjuyMoqosDKRvAkpSHmTgysegQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659533452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zifU42bGW9tD+eI7ifR7n2mdbAIymRbQ/c2dpHd/mZA=;
	b=dYIWhtC2ArT6/5DWjXXXdShYDOEBufqmV6ZhpAJV9Z/9/B8x9yInMbHsfw/m2EEK
	R8zhl6n9qVM4sAkALGxsOOpD2lmC8UPBJbCDjmv1Di8QIZhRNAAYyjzdI3jJlvUvQ3H
	KCoBKpZ0yO5OEo2plGMOm2LnACt6nFvq8VstFwGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263e6e509-a3db1715-6168-474e-9acd-3127a763c00f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ff7b93ed91814da909219432050e32e9276c1a02cf9d4bd73014e554d07870a
Date: Wed, 3 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659533452
