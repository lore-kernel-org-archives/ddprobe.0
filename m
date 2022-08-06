Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755F92F26
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659829852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZUcMFShGlyguXkEjhhI8BNA2a/JO2fteATbJzRawmKs=;
	b=hRpqueA8UkDHETk3FmTiROb91ohBN5yz0GOBmwGfJNE2xuhtZcLQUTg+nU9/ElqH
	CfbZmeyj90bb+/J0kw5oHO8/OEQW2jYp52OMVDkBtKSjSu9CCPA7vtfkmQjXRqmJXpl
	lV0Z7dMkzzy7FZwXevieFwLvywXLqnMf5baQShAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659829852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZUcMFShGlyguXkEjhhI8BNA2a/JO2fteATbJzRawmKs=;
	b=B5sCVc3ens8G3aHxFZMoLNoGSZVZ0qiQFsqbHryni5eLPOqpNj/BtCk6xmpixpiE
	Gr6QORRBRMjk0cJ0C5g0EIhzzwgq5rID0j0SX0sU60yiq9oMvDaRwni768ieeiKBMVY
	cyjX2pCljXYOhFQZopVVoGq30leusaPani9K+t5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182759199b4-3b44df8a-9826-4d4f-b99f-828f50aab2be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1abaf2456161e8408f4f07c0ad5380d8b0201daa04bdafc0398318e40a70690
Date: Sat, 6 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659829852
