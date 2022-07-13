Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7CD29A0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657711012;
	h=To:Subject:From:Message-Id:Date;
	bh=+xdAZyuZuvZdof1V0a8BUoAm1DtaiWtu1iL9QiOm7vA=;
	b=gKV2jz3xMB6EpFKanF2bVwwY96eamZ0pb7SUeOnMgOlMFZ0+u6ofHg9vaPHG+aBg
	3hkaSPMGq8ohR2X1cgwkrHYYl8rde7gY45JTR5Or4MNt4IVquQD6HAzfZbxob1BlLj0
	TTXpLSGjN/aXbPhnjGNoGSEyECS5HcXD4eobrJUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657711012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+xdAZyuZuvZdof1V0a8BUoAm1DtaiWtu1iL9QiOm7vA=;
	b=Mi1xbMUGPVRti4wX5Wj/dl5PYUvuw/fAL27ufi0z985WWW/MEXUh7bWYO/kXzkRy
	Zf93dNisFlbKBqRIJtcywbhSEtwUymkeTIPugYJNNnAjHKNsc7++2XltnbDSVQMP34S
	c1efLebnmn+LLUfjM5Y7SR81opDSCqqUWhZx9x4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f746a9ab-d9b60bdf-0f70-4890-b587-f4e0d05cb820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ed7d55f9b03617c6ac1f9bc939b8f66d39de29f7bfce0eea2b5160208eada11
Date: Wed, 13 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657711012
