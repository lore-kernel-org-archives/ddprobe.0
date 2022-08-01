Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DECC7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659357652;
	h=To:Subject:From:Message-Id:Date;
	bh=r1r31bIoemQyll/DRXkS8ND9nXH+6RNKOtgLevtOFQw=;
	b=Bj8dbe9XyuAQEyLHbK+VeL50dAVsJ/txSTX6HPVGbe3OMf2Bzijc+m5EQsjNv4M7
	GE7ItNQ03qZxSk1iwxcaehXp0+bgN5R6zimkSFklDYImZHvFyRRPYGqjulRlk0NdPwr
	W/l8ilvc2vbzu+8Ye0rqQ+u7IGuhXB+Lo4z7yAIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659357652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r1r31bIoemQyll/DRXkS8ND9nXH+6RNKOtgLevtOFQw=;
	b=azPe+EHL4TsOh/WJ2TFFDaQ7BYFLgw6qYIKhxAwR/t9a6WXkum2zEOKLlG97TjKN
	j4+IsjorCHy2TxDzTe6h0vSk2/rO2GSULcT64qwq5GcR7EftnZc/nLtJK3xtUl37gtl
	EFWIQnzIkBKC0cBVbgMM5I3gRUwAK+LTM9dAycZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182596c6644-3db696d7-7b4b-49f9-b6f2-71e76c0b4f2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af1ef36ca44f4babd166e3cab1220b428124e62a6fcd501cb941ad8bd4b0bcf0
Date: Mon, 1 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659357652
