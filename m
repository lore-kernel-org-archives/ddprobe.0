Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697817E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645570584;
	h=To:Subject:From:Message-Id:Date;
	bh=jkdL2fVCYafjt13Y6LsCcOy0LH5zZXpl6fZOrM1CIes=;
	b=Hb7GWWMRMOK3rTNygiaL3ZeGGVyqAdJ39Mp/IxfzbAyiyBqkSqfxlymrazQIAm8t
	U2BMXnyh0Mvt6YgI9z7MiMZSpMhEphu5duyXb15AqVTF01RgORzqsCBO86QvuhMe1Qr
	pPg+PNNs7HLqMtpcLoiU7DElDTdCAmJRDmsDYKQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645570584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkdL2fVCYafjt13Y6LsCcOy0LH5zZXpl6fZOrM1CIes=;
	b=PNHSPvu27MtQkolOtFY/9fHjaHb9yKJck/kdO/axM7nQix1iA/3q0YqFHTs9rhaD
	qdB1vRXJwKZ0zbto0T8tR195Nn4/h9kDVub51zQgZ3NJ8R9RG5dLy/v/1GUnDf2x/Gx
	yvkfradIuEUKVNTZh2IKBLeQFBN6tb7MvMqmMF6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23a670b7-a9eaaca5-1dd5-4eff-bd0f-4e8db4a5291e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de1d31fe7dfdb0894c3867540072d6be7bcc1efc269c0eb06616e4e261ace7b4
Date: Tue, 22 Feb 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645570584
