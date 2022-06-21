Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE533A44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 06:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655793900;
	h=To:Subject:From:Message-Id:Date;
	bh=plKEwprZmKjrlPenZBd/iOT9fjt6JUeT7dtwfdbSV34=;
	b=iRYLf9f4B8E7OIPZ2ZzdXrRFyrAOAAHQ9w9xeOVNa8p335FIwrd70mEN3SR/OBQ0
	dgho2R+jsCEevxEJ3vJ1Vty3sYoKacvysZTg/tchuhkl9ZjqKfBWXNS23iGRyfN/r6I
	1gb+b83tr0v3AwDSyis+jWaF/l/0A9LedKJ1vc1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655793900;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plKEwprZmKjrlPenZBd/iOT9fjt6JUeT7dtwfdbSV34=;
	b=IAwwVTl6bDpZmrUlPgrEmkssDCdacxJZHips84PeLctmqrg9uMWRTVUaeCPLGQCo
	wkYPqFpwmmTkmrZe1GLNNn5fjLAB5Xia+UKQwpwOJRYdszXasuF9lVzuVzDLJ/KLl63
	zTj87eWpUvn5HUC82MIb6Im84Q6WG02UPiJC9R9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818501d6e8-2fdfc725-0f49-4c45-af48-9d3c6b55fdc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c311f5e80a88f36f060c1acac4401b38b1eb101af84bc1fdb63e3720666f6dbc
Date: Tue, 21 Jun 2022 06:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655793899
