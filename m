Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEA77B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655662499;
	h=To:Subject:From:Message-Id:Date;
	bh=+j9gzrNfYv/frBbDrr/9Eoq/xIsn+Q6l+Nl5dkD/Rqo=;
	b=P9Gnn9z8K6jA1FsgVJkkb0SxtyJiOYOUZHVrrpYeZHs8lXjQsfAmHWMzQsguI0I6
	dfle9Tx1QCsdFaqmVxkbVeImAQV70tHRfRjrHUJe4H9WtDfjQyyWYTC/gmQRpKezPoT
	x+ALBFSWyR1C2vPAolJ2U6g9Ze9HRrxr97jGi870=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655662499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+j9gzrNfYv/frBbDrr/9Eoq/xIsn+Q6l+Nl5dkD/Rqo=;
	b=BewlVwdd4hFrZmCNa2bSosy9J+hUes2fpuxIGnftTd0rUbnldxFBZrxL6HJkEGcZ
	DI5SUSvB+wbj5jn5cLrV0FWJB3vJVp392KRNxzl0WCzzmdeQu64KU2BuC9XiGni4aev
	5+t66A0eqmR1aXlWcx5aTSkThVropT5g1Xi360Wc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d2cd5cb-3d366e0a-9214-46bf-ad02-317650dc0658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9f7493cc93a7348004def1532434dc2399c733029ed43ae4c0b6b58338aaaa0
Date: Sun, 19 Jun 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655662499
