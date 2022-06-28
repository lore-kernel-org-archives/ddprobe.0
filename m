Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F383C35
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656436612;
	h=To:Subject:From:Message-Id:Date;
	bh=SsmaqRnGAVlAEFQr3Hoqg5T+s09tryh0a0qwj8Q0xqo=;
	b=bGbVxrOz4pknE795UJF3xtIE+TUA5WcHRunHs3UsW3oWYT4x6qYkeS+sSzl94T+A
	RHeqKDNiLEAOTsDwweSftzq3xEnKQ1yXhPAIkv4o4hfphk2HcfXi6vUsf70Y0+Varra
	JslgdQ0pG4/HhO/geHLJeCd1JZgQtvynOEOEtZCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656436612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SsmaqRnGAVlAEFQr3Hoqg5T+s09tryh0a0qwj8Q0xqo=;
	b=L3dy3vbnl0FWkFdJa+DhTIwVlg6IKFFQ0l0TIO1cHEegdff2gk6Ftk33v3mEzKOF
	XH676i6/oXmt0O+fubFE3jKksHl+ufWHPXVBJ2dLRkY+mxi5UyGx8nKECove/g4c4VO
	OGO3T1jQQm730HrL+moXj7An8wouyym8sB4elsak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab50dcf6-cb5a4702-9087-4ac4-b254-1ebfcdcaad31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 427b65edf30a30c509145e1457dfe3c05837197bc342e81b1592c16c72898b58
Date: Tue, 28 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656436612
