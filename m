Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54FD3FE6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656538613;
	h=To:Subject:From:Message-Id:Date;
	bh=HRPHkd1uMSxARvfrvE1SdgQl2mCe8mdz/52B8z1sACU=;
	b=OQfPRVK56/aQJnGH+SoapxO9RzLpWpxtgn+NccM5RPZb5AQF9+O6XpzLFEmUMvUP
	3mD+qlBSG3DXWzu7hk6Jk+KJKMXFAfiCKwX1YFPNnP1EV6WsR1gFH1Rg8yt+TJE1MAm
	hAnpwsTbHii+sWZ9gvxx5oxTLLjBmGvmz0gXqshw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656538613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRPHkd1uMSxARvfrvE1SdgQl2mCe8mdz/52B8z1sACU=;
	b=UJyxsBCEtnykjH0h5Gj5Is+4GwpjTGroLOnqpK+oMyL4oSj1LM6vMU5jhvBjQmRR
	B0WtZdTga+X5AprqKmryyZrNlKV/oKN8IwDJxqsu0aavadcVc0X2cYyeYv5T2gIabw2
	JBFuIK3tSahLk5gOMsOi5pBY+mp0vx3FWGtG5QBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1654296-00c7eb6d-6db0-4066-9c07-d8b2db64a151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc8b1d48fb7834a74a69a739d86f1d7a6e6c028488995b9ffc9c712463b5434c
Date: Wed, 29 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656538612
