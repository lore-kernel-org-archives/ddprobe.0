Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6D21C08
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657390612;
	h=To:Subject:From:Message-Id:Date;
	bh=hkJ33yMMwcm3UeJVv3C8sjI+wMGISBkZkwnckck4sDE=;
	b=B/DWr+ss6JE2+X2E3YZL/fYERy7PBB+x4uKOGD0TZ1rKDfjnlhqLCzt/nnC6R/d4
	WLsulHWgiV5x7NzkYraHpW6cM0IXay/1ieDTdQ0T314f6TO1aMQ6U/IuwmPezK0mMVw
	Qt5mgmKeT1QBJ/E1jSjKbOVPKSAK/Bbpl9q/RPiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657390612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hkJ33yMMwcm3UeJVv3C8sjI+wMGISBkZkwnckck4sDE=;
	b=TIz8iJqXdivxjnneT7gSdIsLIOJsltXnXI302V41PuQXyFCleNCq1MCF0kHACLit
	97LZYQkIAQ9MEoANfc0eD/8X7Z6kMueD7ZL+YL411GgZbJYwmXi/Rzzz+4ObZRF57qA
	7fqrAiR7RK1ev1ncHtupdz9tCPJ3YxtxoTeHqC5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e42dbf86-b3519faa-a143-4aa8-b407-17eb47f40018-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e8457b0f79d75e30d5db1bc71866a3172a96351a6a897c8dc7890ab7360356b
Date: Sat, 9 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657390612
