Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5016E33F8
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656874612;
	h=To:Subject:From:Message-Id:Date;
	bh=S3sTKqxTzFRLRAY/H25LyDVv1NUiJzjpP/I3nSbO3Mc=;
	b=iB8uBPGjF7KWCUHK88tPd/1U2859TwvR+6Nu6lNFRQ0oVCN8SWIHt8hKx4KArBSs
	TlIZt4xh/j3X/O8pzYwAE4kLyls5lNiWTeNe46phWutbDA3604jgiPdcyQGFzdxDlI4
	TKGr62+mcFRKLcBrHxY9e+YWtNoGAlGixo8xslhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656874612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S3sTKqxTzFRLRAY/H25LyDVv1NUiJzjpP/I3nSbO3Mc=;
	b=WrWEbJIK3gHhPUauSQpnB4gFqBFnnHK8pKy3bYAiYGXpdV1H6bMxbuoQ091Ux6zn
	LdI9R67lTLd95tiEgBaetFtQXKRON/FD81h1TbloXHSnT71nI94OM6hHOWranTwPD4w
	yTz0nPds0oLVYjq6/EYd0peTWKGssATKagGnOosg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c56c367f-e276a417-51f9-4ea4-84ec-898552f577c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0513ed3a032554204cec60669cc32152deadc7d30fa766c7a4534a53d462db40
Date: Sun, 3 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656874612
