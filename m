Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321DE366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 01:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648602599;
	h=To:Subject:From:Message-Id:Date;
	bh=FNUFSYKHzC7pNiojjQb+eKxH0COHDnEowEitQDYl9rY=;
	b=DcpL/JWuvb8rYl0+92UHCXbBec0fzTu+cWZMu5umrC1W+fc86ulVQQncrh132PF6
	/XJWx/CjgmJm10eNKBM/uy/Qy6xo1ebEGYhj1my4Wwz7NGhy4ZVpPkTd/y6IqhFKaz/
	h0i5H6yFCxX5a+K6KUGHueiGO4A5ACaiZPlSgOG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648602599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FNUFSYKHzC7pNiojjQb+eKxH0COHDnEowEitQDYl9rY=;
	b=XU+WDRgQZ7pvt62kEgRAPtvqm+UvPLMKGikCyCocOOhJqn0BhQ5z+8iG7dTdGoOE
	i1xGxFzDxca/tC/0Zo6+ZYfVDTp/R78FHfob48YHTMCZubpCt4axVD+EPkIQNjp4XnF
	rDQj1rWQYLgdRrzI66ZB8JUZ9W3fdv34Y2Re68vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd85f4bb6-b8904e22-5b83-47b9-8e18-66d3ef6e3fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58dce40439f134889bc914ef8b1c83a48e781598ae5b656d49d8981c70a0072e
Date: Wed, 30 Mar 2022 01:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648602598
