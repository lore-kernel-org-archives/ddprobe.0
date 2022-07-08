Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2205E373
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657241212;
	h=To:Subject:From:Message-Id:Date;
	bh=DElpbT0tmpYWc81c7rxgFlxIyfrWQcsMWsjCAocc9ag=;
	b=GYCDTkF8LRWFql6lqLIhfQ/papP5jpeVsckhED5qgZ3TXA4dwmp/po+8/5a90pYL
	sK7ZdrByk9LqOzJiOljQjwFMjUlsVWxYqvaKTxwqv+bK06Y8//b86N5cD8j4G3Fp6dX
	p4ftdPl/Fep12xxOsCvxUT53nScyv36P33J4b1Qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657241212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DElpbT0tmpYWc81c7rxgFlxIyfrWQcsMWsjCAocc9ag=;
	b=dr/JtcLBKCOjixHvieFsxCCfQdYg8mtKD5RTe7bOZf5U61UXnQ44g9n1Nt1qxkqG
	zeRiL3OQJ8XB51GY3Oj5QX9PYtazzXZ5yLTIujSpbCGa9yr+Ic4T4Ml/ekJ+HVnQuj0
	Adx92sLnGCrYY5vc+7vEuIVrs3gjClmiQWq4irDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db46158e-a6cc8434-0d64-4333-9490-a87a3b5d894b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8dfc5017cfb63bb4bbbab7343fb749229f9ce80c7762e8aa9636fa525ddf0bb
Date: Fri, 8 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657241212
