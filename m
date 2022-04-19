Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48644EA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 05:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650347098;
	h=To:Subject:From:Message-Id:Date;
	bh=TUqdJURb+5Ihzfq3/3hd7Yt0Z+z2GKyCDQfLNFKYNic=;
	b=RuQyZiQ3t2R/UwAlJ4ppEsv6DY8CvWqWqPp4nx3H6y1GjKaTFqzbAlBZeOBZYRtq
	1/M1g5DtMgPgyjJf/yG8QfcCqj2BauwIOcRxSCGVBDbT5KhTSWatE1FiSsRNP3ypE+K
	QY8/HxXfRamyVE2AAPUV+KGx/ZbYpDUsxUcO9gX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650347098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TUqdJURb+5Ihzfq3/3hd7Yt0Z+z2GKyCDQfLNFKYNic=;
	b=S8tCmJIaIangWAWn3saDe0WL+j0w+5qO4V9DOGsqqgESC3V+WDXsSbzUtVvjP5UT
	v2J0YJszTNp8zmWmapwrnMknMQ7TJ+TJFDlJWGMlQb2mJPHqY2EjENCWKw9HZeLpGuM
	6MSJqXCywtzf7szUtz0A/TtwSpTlBr6Fa45zHZzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180405a409c-c919072c-a8df-4915-ab83-52cea2f0dcb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6975bd1bd3f4881e292398ca8581995b56b0db98fd8d86d4f8d7c29dbafcaeb1
Date: Tue, 19 Apr 2022 05:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650347098
