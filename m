Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A09371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661067052;
	h=To:Subject:From:Message-Id:Date;
	bh=qmsVzPh/KFBHMZ9NPL/IWmdyQ2VeJdC/Z56PRnfTgNY=;
	b=k9bfBB+gPuboSua++dD+8qdMvH7Iayq62fmiT5QR0bx+RfPthu9G+drwgHov5qyD
	LdTWup3NCnSjmNNeepCj3GMY4KOZdcChNAzhvf7Z3HwYqkcfFBURMCRGg7UiAJDn7hc
	Qs+lsiauTCYn404sHhm90XBtNeylrEVDIThleBjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661067052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qmsVzPh/KFBHMZ9NPL/IWmdyQ2VeJdC/Z56PRnfTgNY=;
	b=c92yBM4KjNXklWi52TWnN7lJJVheLnxTGD4cYMwntDLN5YQX1wLAt128U9qbwZ+M
	21gVqgd0wi/uc/Qbeuxpm/f5VjQsgnTYKPjerhGdHcIv4/Ic4jgONAS4uBT8PfnP0OA
	u1leDe0W5Ipkc/S78sc1l3eSQzV8WuraX80jnq9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf4fc64b-3ef1869d-6292-418e-8547-6096be46387b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6bca1448414dcac5e3a953e4fad4d4ff545cdeabf24e4484c4e050e878d2bae
Date: Sun, 21 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661067052
