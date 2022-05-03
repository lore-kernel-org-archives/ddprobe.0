Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0CD7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 17:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651598278;
	h=To:Subject:From:Message-Id:Date;
	bh=hBHVs5qEDxkRwLcTLOvIbNuXDG1Q6qvl2ddspIFqa+E=;
	b=lD3Bs+Y2VeavciK7VvDlHS9pGXFiCB7Mu81B7CsY3k1ZlRXLvba1dXogYYiaWkEi
	4hj/ZG/VDEgAyrtijeH/B25S95rK1tKjmmY3/aXRu3KeSWfrpDH6ynG2pU2KxAZbbhC
	H8FjAnRNtzCQAu3hjyrzIWteLjWVBQq0hsNrS53Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651598278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBHVs5qEDxkRwLcTLOvIbNuXDG1Q6qvl2ddspIFqa+E=;
	b=T/gUYyZQG7m5Pu8bEwvLEm/X+MjUZ791PJzJpys8vVKSU1kHFwgBOmvql4veS9ZU
	0sPfVQHUWcZMfU61T3/ZoAqjt8TTXUrvvIOeVQZ/K8qYDuM7pJYl55xg80YM0Ja/sof
	tLn6kvH4Tm6a7rU3m6K68d/ip8u5c2aXY/9h1HZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808aedbe85-07d3e543-27a2-4e32-a38a-4ad6cfa8d9d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a939d483663239d47b4a88b3c36d6239ed0a3a525a82eb5452016b6611b4b75
Date: Tue, 3 May 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651598278
