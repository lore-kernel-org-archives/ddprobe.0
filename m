Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B6B6AD9
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647291384;
	h=To:Subject:From:Message-Id:Date;
	bh=K2Bimn5+UeVxhTL6N8g/MnYxyaMAx1IEznQ8lO/xvbI=;
	b=RLgZbPO6An7cXTSKVPmdpcVto0RgG2xcT52E0Es0VY0GpqiJKKd0sdcQ73F1pI0k
	HTTXcggHS8tx2clkhz4EXj06dU4Deie/pUNOlD8WzHBKFFnCiwXzO9PcCYgY+s9zeq7
	03JzCZLCyt8yLhcyi7A71ALbi6IESi3s6wmJrVSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647291384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2Bimn5+UeVxhTL6N8g/MnYxyaMAx1IEznQ8lO/xvbI=;
	b=OFeSrbM+n0hDI5AjRHuVWhANQkf5HbyLnzj9Fb5GMYDIWEQkMGgGrTO0X91Kmljw
	0joaUBbAR6DUeU5NnKmK11HuyWZPJL8LBVaSNiZtoEgfOvmWMz+TGv/wJRoR/Ds/EJS
	3OoQi9gi6lpM/TpjNUWGqIYkAsIsuKWLmv3Sjm0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a37c3af-67f1ca21-879c-4dd3-9405-6dc1e90f4f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe1643ba5901985361592e27a2e6d22741459fd2cfbe57536461ab2864362e5a
Date: Mon, 14 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647291384
