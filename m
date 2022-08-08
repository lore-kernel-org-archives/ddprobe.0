Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4C67C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659967852;
	h=To:Subject:From:Message-Id:Date;
	bh=ptF4OVJ4aT8w68fv3fkrf0NhYQ4+9wLzF9UtGJByZYY=;
	b=kxd+kZrAhnqG7ZVKdrHh6xIGQesHWi/LOWPCM9uO4TziwR0iVvIUzYG8WGErl9Nw
	GSkU9htRsrR8yV/h+OpaCZqEp3fEIBECtsD/vjFKUEJALKqvR/f63sgdoZrMPt4kIIH
	3jeqXjVtFqFHFTDBs/ctfosa3dNe7JcjpnFZ4rZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659967852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ptF4OVJ4aT8w68fv3fkrf0NhYQ4+9wLzF9UtGJByZYY=;
	b=GXARFMESrmah6OhiG3yR1hydjY8szBhHdw/dfKUz6+vUhiAK0KRs3yCpVcdz1W23
	sePFbfLU1WbtwEVV4vZa/Rf6uTG3p74GwR45fcC7JJ9LbYX26sK3nqxpwRFNbY8Ui0C
	ShWSvvvkhUgqk9pmH5ii5IP+YUEM6LKFCmUdbAGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827dcb4fe7-10fdb80b-c2eb-400c-b437-e4a9ff10aba6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8a86f360fa39fa9df2c1f3ff7895d57dc9a14be1bf886103665210daf8a3cb2
Date: Mon, 8 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659967852
