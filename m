Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F371865
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657510612;
	h=To:Subject:From:Message-Id:Date;
	bh=EmdETloEjlQm53NtyDJmPrMyxcEosmLhNwEpqNlQRyE=;
	b=cErTueujIMUSueL/Bc33sEfFzQC7Zxhk9uFDaU7fZYHE4CQJrnIJLXSCl/d5BUyP
	eOXzDUEfdK/Q+H/YAVlHVSzJwEhAxtKbYw5OTwwI98C2zC6VxFAw7Z4pQQk4KFtFuzv
	kXy5qQ/OPB2Z58/yNmQo1oEIEDvhxQad6JLLAbZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657510612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EmdETloEjlQm53NtyDJmPrMyxcEosmLhNwEpqNlQRyE=;
	b=CZH1c49xqJ6c8SPgcj3C1GgKJBjk2dHM8nn2VAPomxLYTmPSiXborpga/IM/wz2p
	VeD0z/5xWBN5gOhD447CWJn2HUaKdWWGzOlek0domI9VIJxsIJpx8ZbQsrXmhiKNcj4
	S+c3a/z/3sES9ZglYQ6lF5tZFsQ3eVjR3xKm3Y9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb54cd6e-91c6208f-fc80-4287-87b0-14589a9acaf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9f0367dc447edd3333ad2863fd84717cc479fdfd64b53d1eacd94ec05c9a4bd
Date: Mon, 11 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657510612
