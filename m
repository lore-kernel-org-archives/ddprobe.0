Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3C817D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660133452;
	h=To:Subject:From:Message-Id:Date;
	bh=I0t0jl5R7KhdvJcg635rA8MZqhwqgAq9NUyn93MVwEQ=;
	b=X2s8ew+ZUC7g5FCn81gLAm2zziaoBAtUmFKYoifaaDPbfDtEwe6Wcg3k1erOVa89
	sMAJyuW2YL6FJE3TcyByxCLUHrUtuSqTx+z5EM9gMs2IQ6ORM+6dAbqhHeVedp1H190
	tj65IO0pVczMyiCliQ4X8JReIPB3PZmLhIdZVEAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660133452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I0t0jl5R7KhdvJcg635rA8MZqhwqgAq9NUyn93MVwEQ=;
	b=FYFEH5CXaz6puecz3f9W3Vs91cwJeV35WKyCnRmcIp1VDW7QhfsyRj3jbFpPom/g
	9UN9k9KGM5sF4dyJwqGVtZBNf7NVF9ZXf+Q0hQb+DZoCY/vGjyqTw6ES6gcJUU0hbmN
	Ie9iNVsLjewK3kX9X4I/9a7bn5hQMEwAMoG3A+AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287aa2b22-a4cebbc2-203b-4720-b71c-e8bc8abe1cd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d93488d0bde4a0af6ce3d107f26f581ed2aa794c0de4bc3003aa6a6c7ed29731
Date: Wed, 10 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660133452
