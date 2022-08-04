Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BC12570
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659622253;
	h=To:Subject:From:Message-Id:Date;
	bh=et32dVzOR2lp/wdD03v62bQPLTKblFR2lmxLf4lnNzA=;
	b=Bz7AR82UmSBYI+FweNnqoJ9u7YHuS4wcjqFbQigeNNtOdjbXjK+O3eihmYke4IJA
	97vzlUimzO4HJOTHhBiJ+wI0BLsYo7dSrMj9U41jQT7RPhB+bmLpXlvnxqfDkPPNeHm
	wg+Zd2dYTTWsHZgr6fEYJ2yPPnv46A1UdSQtOYUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659622253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=et32dVzOR2lp/wdD03v62bQPLTKblFR2lmxLf4lnNzA=;
	b=gX8twYo8Cb4b5ndkcOqk+tGMzxfE/eY05LjsjE+LFW7QdUUgL1oy8vUo9zumd6T9
	A3yy5Z0S3d85dszr+8XldfFDhO31a5q3IgEL0LKuqlBB28xHilEGg89UwjXyqKKw8z2
	dViD/cAcVvbPWZZfj/qlwExyhp0w0MIo1UO+ofKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826931e021-85a73bc0-47e0-4836-aafa-bef5971b431b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e0638f960e890518b2e71e7b9dc1f6dd0f8d2b918cc91b000f13ab8a7e2cc72
Date: Thu, 4 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659622252
