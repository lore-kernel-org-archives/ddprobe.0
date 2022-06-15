Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66FA7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655292779;
	h=To:Subject:From:Message-Id:Date;
	bh=c1PJ/c9HP8+zMoNrDyjd6PkRKfl7ma9qmThdhe7Cezs=;
	b=iyncPzBkbdZ5S8iQkfVEetX3lMUjw4Y6sNpURLlN/PsNXl8/0jhamI7lrm6qyzWQ
	EHzFiZDzezHFe0ucE03iszndgi6KBpmtFX5Jj5KWQ1LLTf8EbiFF7aUTc28L5h4w3ST
	GXxBlga6giaJwV0W1c3zl+ZCGjuEU99jbtAycMYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655292779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c1PJ/c9HP8+zMoNrDyjd6PkRKfl7ma9qmThdhe7Cezs=;
	b=dchcQw5guS2qkvlXt/cScjHfhLsO7zPICIj7j5a2VQZ277/W/sR5DTFejU9lNAx1
	xdHw2kmU+U9Txh0JntwSxuKXY+Th+p1XMYD2yDXZ0ZgIZHZReriSyj8NDVp7D6l3Vk6
	0psSJWfY8V+foTsrMcA28RWd5w4KfC2MmZmfKM90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167235af0-f377a429-6d43-4c77-8fcf-eacbb68eeba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b42d640366047cbd91dca4a0b5b2bfaba0eb14d417e82368defa2086220e56
Date: Wed, 15 Jun 2022 11:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655292779
