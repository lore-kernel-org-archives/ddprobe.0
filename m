Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21C81365
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654337999;
	h=To:Subject:From:Message-Id:Date;
	bh=+yHOPZhvpynWLfzZUOZkjcXWMt0CXPQcJ9u0E0a0wCE=;
	b=WkEjUlbYNaBa1T/PCM5EaPHOaGR2q5dmswj8gRNSsbuJCzjIubUORBDeGE7JPBiH
	wJcd876WN92bKMuvf4FxomLqhAXf/62rOE4m/Z1RSWGd7tpQZDX+NdQhbopD/A7oofe
	QQKjnUfk2tHF8n8HjzOgfUcaRoMii4E978gleXBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654337999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+yHOPZhvpynWLfzZUOZkjcXWMt0CXPQcJ9u0E0a0wCE=;
	b=jiUy12kILGqLEsWG1jW7uBVYC1iCJem0p1huPnQqR+KLosZ7J4ui0ANQWE0WdDT/
	D9jGtLPJ/vFOAlSaCxvnjDr/zn7I2z84X/QvXB3/WyWk8oaGkWwTYki4XDftDZjBA/O
	gie3yejKNRStDQI1zjdotM11aLEm+prW4pdrqlTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e3a91d0-cbfac258-96c3-4a4f-9f37-94f510672dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3aa05aaab104abcbe19b85ccddb055f95a5a8295ffbf353e47bf34e065bcb329
Date: Sat, 4 Jun 2022 10:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654337999
