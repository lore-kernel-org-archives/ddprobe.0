Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB18368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659514253;
	h=To:Subject:From:Message-Id:Date;
	bh=XAfyDP2Ua9qtDAvXNx7qZZ1ecZiBCpw6F4tpSLtIZOs=;
	b=lWsYMCzHrTN6XyrzOJkwAvn6Y7/LGFfN40aZKBHnb1PgWDGH7AKoQEuomcg5y6PC
	8vyQy8jI6wWYeDtW44SDloEF5phYe3Tnm6yZ0248LtisbVRH2GNaDWPQktSr1dOweC0
	gLbBVFJBG4QBOsyrFaBE7Khpj/RV3+R69Pvpj3mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659514253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAfyDP2Ua9qtDAvXNx7qZZ1ecZiBCpw6F4tpSLtIZOs=;
	b=HPSQVz/WmysD/E+567DkCW8QYX0vVggrHS3a84w8Hv3baILP+W12cjEML7aXA4YG
	BpwmhcpRZQjtqQn/cb/6tByb9fJOjuxc0vs7KxjMQjSB48PxLl7aZHG5iC+5x11aFEp
	wH8vC12V3X3d6z6XrEBI+at+X7tAuTCCC5aEXmbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262c1ecf2-97e6b95d-fde9-4205-b362-c2939792c8cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0df1e1115b58616de4ec162d76553b131460ae0ec3ff0ed00d2290451827600
Date: Wed, 3 Aug 2022 08:10:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659514252
