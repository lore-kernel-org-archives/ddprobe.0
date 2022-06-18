Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042F77B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 08:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655540699;
	h=To:Subject:From:Message-Id:Date;
	bh=8hROWd29J1jMkikvHICDA6UynGAYHtiTz5fwfQZFT+0=;
	b=EtVS8FPB89YCjFSqmpE/I/AwpAiRGZtT7EvEsbyI9wlk3sXfBYKyOWDEpVWKwcfX
	mN0LXKd5DszO/ngdwH9k1NyiDsT6g3CLzxP2JR9rwZaodJL2jwr+msbsGAUoa0Jd3fs
	G6dM9I7qiavZN7ozvqBruJIIcz6YKHz/KNN14wa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655540699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8hROWd29J1jMkikvHICDA6UynGAYHtiTz5fwfQZFT+0=;
	b=Fv8xs6z4pZBd/Y9Q6vA9Z4ZBiH2qtcABoyCd3C8kGgrxVDkuCJtJ4khuQ75Zg33U
	acWGeIYIBxuG9n04EBUOt1r+H3bWeri3EcJ9ufxOmUB++rMxMpIChpaMiR9CiE5V1+s
	UMvZTCrq3ssHCHGDiqyHGmqxTtUwMvkmDE86NBJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175ea5066-41f394b0-94f3-4e25-9772-f53873ddfeb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d60d1902f2af7bd0c2bfbd84489bfc298b4ab50ec2e8b4580ccc883b8b4c20d0
Date: Sat, 18 Jun 2022 08:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655540698
