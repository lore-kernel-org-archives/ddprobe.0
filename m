Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3C62F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646325384;
	h=To:Subject:From:Message-Id:Date;
	bh=49wncONZ0/Ds7OZ0yxZI7yqsYAghCoNAMHSskn2S9gc=;
	b=keLrgN/zY3yyDghh/gf5MlvvsHlLpPyw1LSmTZrtNZg7UZX15wzkyaS/KU/oPD8d
	UMhX0OM/801i6B95ELtpiGnjNktia51BbT0Ig/wKdiv79V7UQt4x9wMkqg2q41bPYkn
	U5ksgaK1mZdV+rHirzm9Ot2l9xbbf7dPcRrptzYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646325384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49wncONZ0/Ds7OZ0yxZI7yqsYAghCoNAMHSskn2S9gc=;
	b=U5FwhlrzGAcK3v0AD/MZapo/+jFuCRNLSth6X5AbR0QyQWB7ItScQmcRr0p46IVw
	gv6HNIZjpBdFwi0/Kv/4cGOknn5/QY/sUR1vfWi5NyqSLe8Cwsd/+EoOUMFTDU8dNj3
	xIDXK/7jS5b9KP+Z98KdCqDvb5b1Z3gFIanh4qIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50a3c608-dbe445d7-bbb4-4b9c-b1aa-2a83ac9af601-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7736f3b334358cb642ab0f8e5b65f3b5a24a1a176e2462985806632357214408
Date: Thu, 3 Mar 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646325384
