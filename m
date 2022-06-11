Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B05A21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654962299;
	h=To:Subject:From:Message-Id:Date;
	bh=OXKZn0BjJBZyXl80sB8DpJnSZ9Tmg12+1oPWlkUXwu4=;
	b=j9fD238FuRHfJybKwgpmjrQVC0p64ofpoGBpKMpmJXW3gb7PtAUmmZ5/jngELP8b
	PxaqJdWOqIbvc3UP6z7Zat9reIFIHk5XkDf/x7SF8dUZ8hP2GJoZ4G1awKWbCRJe7Nu
	+X9q1VxMGuydJhf9yqKY42mtLVBtbhagIf3z79kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654962299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OXKZn0BjJBZyXl80sB8DpJnSZ9Tmg12+1oPWlkUXwu4=;
	b=fcc4omW8LFXWEQdwf8h2QPPAaHwaiW8mKNuY0iBuCUe9k2oGzoj6Kr3VB3fUBwZB
	cSrEsqtST7z7jJ1grb0kcCpicnafpkRtmUnE5rzLk5cDiZQVnF25XMRqTx0A5sRkjIe
	9c/iEBdlnVIA0yj0yg4LHzWz7V61E85Mxhb74Udk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815370a191-60e6f37f-1c7a-410e-a676-77732444b2d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c8d65dbd70efd6e186a2ac2cdc38ac95a6db15e5058fd5cfaf09b4cbb225713
Date: Sat, 11 Jun 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654962299
