Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4241F2907
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 18:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651428958;
	h=To:Subject:From:Message-Id:Date;
	bh=OMKh6dti3sC67C4xdJOdyhkomfNj9wigV4o82IjQt3k=;
	b=IpMD9JDcr+qDK0gXOyXl4QX5lhy91eli3ZdEIaUkJn4TKkVMZYU5rRo7lj7Swm1v
	FECrfAXNKXfKtVsIygr9sFupX9v1foQYoVtcGXFcE2tHK0Vf/LtpST44uL65Eek6sp7
	AKJNV4u/KXMK+ESG8IX5JlWMnV2oteG7yzJJ1vnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651428958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OMKh6dti3sC67C4xdJOdyhkomfNj9wigV4o82IjQt3k=;
	b=A+wxzw7WS4fa9p+QeUV6o8BlDgrNfq7mEvtPRS+SOeoQ7sjQcC2VTqqG/SrW4tjm
	tXIXq1P2G5CtsG2Q043uo1RLg6apMTXtBlJF81IOe/UUXpIvsWRKhhmvjMcUQFcRrw8
	yJs9640vliNc0c8IthekNUR2xw6nyML1pZxFEAUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018080d6204a-8679a1ba-14c4-4f75-8909-b81e95d022f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49e880401155620534e7e3f707f687510193020e4d278e639a21da62c792310b
Date: Sun, 1 May 2022 18:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651428958
