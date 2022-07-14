Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3107946B9
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657805812;
	h=To:Subject:From:Message-Id:Date;
	bh=AYUthptUDateIBkpKqWShihkBRk2hKryee8amQRkBVQ=;
	b=gRsUXw424+mplhr/iburGEh1IHOeG/1g6AEjMi8xPMMDxQ/QVjGLRN4fT6cULmM4
	4Ii5toHM5AamebkB/sZttV69hkJfiy9JAKKYmfv/NjZ121GYhQA9HzbTOLEPchDWU2q
	176TxSGWJSalSQZp2ydiT86v24PC7ZKPz/zguNEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657805812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AYUthptUDateIBkpKqWShihkBRk2hKryee8amQRkBVQ=;
	b=TYDHr/nXBVkEhD1FHjs+N7gXpo2oPCHAb+vJhAitLjXgyVMSoSE67cCtMaKNbb9G
	O/U4HizoHPCoQ1RnQApLwTNd9fyt5YNQsarvr5Ta1OC4Og2nZ6VMTyG23YkJef3tnaG
	U2I6arM0XGaLlrpPowGqewxBrAPu0Y8g24c90fkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fced3274-ca9f7ab4-1806-464d-b8df-45fce7453947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 996b7073b5eef96b4a0704d4f44373f98bf4c777626c4f5e6ae90a9d743ce2fd
Date: Thu, 14 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657805812
