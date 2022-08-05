Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0071C03
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659715252;
	h=To:Subject:From:Message-Id:Date;
	bh=0rw6osA+3G2Mvws55rWay0U3CcVF3uQSPGxcG4Sxppo=;
	b=dh8BSlXkbHxPLVVvkqBT3MRyV71WXDuIx12F8a/PdLn+VYAuYjKjABkc98vBVL2o
	z9lM/GPVK+pdPXaTsVOLI4fThCOH3TeqicsiloHpYZoRU5vVRHcb9ILVtaDE9rOQzUY
	5K9UjtPv/G7jpud8D05P8SpML9gDXSQtRtOSHeCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659715252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rw6osA+3G2Mvws55rWay0U3CcVF3uQSPGxcG4Sxppo=;
	b=Nc+wAKVWznjoA1wYxXHLvWWbsU91Byt+ix8mvD9oNf6/9lV7i4ZdZgpKP2M60GB9
	QnWvC28G0sVMXpJXQau/f8xkJVe9H732v8J1hULRnXtOCN6gW9WL5XBbdgZXGULW8jP
	wFiHLPYH0gF7gXfzLRYtKxtGkMqg5gmikIq9TIhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ebcf14b-37c473dc-df1b-42ae-9952-b67e9c684d74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2854eeda3ec6ecd54a6f0c5b7a1948bc5e00a81dbe85d56d27b2f1c7a87c7ef
Date: Fri, 5 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659715252
