Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A257E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650976678;
	h=To:Subject:From:Message-Id:Date;
	bh=15XF3ZRrroQox6mPrBCit7HgrE6UFy6YVj5igUXLqVM=;
	b=m2IxEIk0ypq/WFCOU1iMJ6jLB9Uje8RtyOuQ+whjMFcY5T+yp95ZIDm7R1RQ2FFw
	B1/4KwDvKhG5/b+n0Plj9IM2GpW19+PLb52b8iLX5abhwUScnT6BzUYD5B8APxXkAmg
	d2Ah35xiOpA04FWayRu0bhWYyXtym4BGWLfWomyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650976678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15XF3ZRrroQox6mPrBCit7HgrE6UFy6YVj5igUXLqVM=;
	b=fFGtgkhHPsdQFGAsKuI7USYoUJq/czHyrXSsX0BZUzjV6aj/rXqnPtsuTUt/BVEd
	If4tgwA4NKgnZ6+y3jA3LoeFwX35CJhzb6r2VhrYGA2KK9AlrV58bNilUQnVf5fb62c
	hHi1Qxl8mNBAtZxz+UaFQKPXmTi2pZu1O6rSf7Fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065e0e15e-f6374f1c-2706-4724-a5d9-2a652875e550-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aea48437c8a3f3f27874296e1e6910bbb4348ea9221be4d8b066b8c7bba8110
Date: Tue, 26 Apr 2022 12:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650976678
