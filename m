Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33682F3A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 17:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649958478;
	h=To:Subject:From:Message-Id:Date;
	bh=rMxDnaLR2lQ0VWu64g/m78bg9ZaSTTqixBiaMywjhbE=;
	b=Si8tIP+MzL3AtvLipnBtLz414AN1udUUYkWyjnsMlSPDEJnPZy7+5atG3wApx1zI
	Lvb8qQJEgQueYYxOtLnpXLQw2Ce2k3xJznZ99y5q3qL4SmBLr5B6rsCLSxeIdUfk5aF
	m9bbXLiyiwuSswc4p7fKKGqlgWedsLZ/+4iQGqZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649958478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rMxDnaLR2lQ0VWu64g/m78bg9ZaSTTqixBiaMywjhbE=;
	b=PPBDt/T1dZertO7KCaVivCrgDyAijtUf8i4exFpmyZB+0rIVXfs6wm3Zvdf2TeFi
	T/EQT3JzA52FgkZcJtrVaSedDABqcAvStD2lmBNbla4OKEOIZ9O9/3ZaVdTz0MU9Yb3
	TbvOgia4p3FrhND1ArxYKB7JgH0TlqdwYfcQqpTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180293061db-f471a22f-1d61-439b-99a1-de449de499a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06aa222d5c8c0f6c05a98d9a45b550e75245dea6ca0fb7d7f61059143ba16e7a
Date: Thu, 14 Apr 2022 17:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649958478
