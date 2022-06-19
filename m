Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0177B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655656799;
	h=To:Subject:From:Message-Id:Date;
	bh=bRBgz7FvaOhFdoIP4Ei/yvRa/OmNgw48L2EMrc3Z1yY=;
	b=aQ0EzX7r42Uuzp775S1xfnLlRYK8BTNubnanYP0RGXj0wvkB/vrURig6+ezflKu0
	XgQSe8xWdzcCrzkhzpOiHUocWhALJuwJgdOMfw+mqOn7AdXpok9dNpdfXF6313jjHHp
	DuoiFhX82eUpKM9yEQmdxngGPVK5XYQDOO4kSJuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655656799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bRBgz7FvaOhFdoIP4Ei/yvRa/OmNgw48L2EMrc3Z1yY=;
	b=Nwp6VCCphEIIAh4aGDp/PLs8dtZdNbPVCN7FlDPPVdS7REJO43nxNr+9/L46mFzc
	1kj8bm0SEB8OKvQM8SrK9SAI7eh4MryYgSFT9fS7utR5PFeKnytRXIGa/u/nBzLOeb7
	/ELJP+RUmqZOUrXWMLPxv+UfA1fFIsVjiHBlfP5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817cd5dbe3-4c86afcb-7982-4400-b9e0-7d398590a738-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 614e90d4ef86983f8065ccbbcf33ccf756210fd103975038b93fa3307ec5e578
Date: Sun, 19 Jun 2022 16:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655656798
