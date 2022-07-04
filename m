Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E515A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656904012;
	h=To:Subject:From:Message-Id:Date;
	bh=czLJ0+e337yr0ZhAEzlxKaCn9KnDinafHm9o69vdmMU=;
	b=Dysqt0GwriyW3XoZfY7rq898avZST5pKir5OWT9XBkyNW0i6KMH3ES+x/2aDxrBu
	dmLWkqCBNof0klgIr1IZeIroYuoKXApjSdHeoQlDFcZ2Q0QrUGSEczQIJoGV0o1wP6Z
	5g/OoysnBLZojmDHJyi3l9kHVpNjzcOabMdJrurs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656904012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=czLJ0+e337yr0ZhAEzlxKaCn9KnDinafHm9o69vdmMU=;
	b=eZp3mwbcXUJKLXfcwPDesnu2nwK7II5ucGNz793Z9E4FS2TNtQjL94o49kC98HQr
	cuyVy6uPnqfMIkUe45vwcZC4NFPL70hnT1KUOuG6O9fqH5Bt9qCycAjSWcS0aQl4bct
	Cf+uZwzbqFfMacTvHvy1NLa3QYN4fksLBtvNrpk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c72cd1ee-a32f8068-fc44-4d52-8d22-7dc644d26f7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5378909051c4098bc33fe9f2fb39e86eb9cf313ce09b1dc52d8b15f008a626ad
Date: Mon, 4 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656904012
