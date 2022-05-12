Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D318B3D60
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 19:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652383440;
	h=To:Subject:From:Message-Id:Date;
	bh=I0YTY1/OaN2iodQzWjLe5yqu0C++vH2u91RUBzX+tLs=;
	b=IEYLHpwp/oKCM4rpI8rlTAIBGf90hFnM25RvxKVoafneawfq67To4zKAQszsj1iC
	faYfT3K7utBU7dwx7JT8BZRjo4XjtPXB3bB50hyhdxpJh1+xiCCPRFIbwf0ofuppuHM
	j1St/glX4X2yO9NzfgKcZMlZTkNoHNvgHQl5bgWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652383440;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I0YTY1/OaN2iodQzWjLe5yqu0C++vH2u91RUBzX+tLs=;
	b=TfEACfu3wEfo8ZGbqSRM7ePuowC/ii9oZc7WeOAtcyUDqazI2E4Y39fjkWC8LPia
	DT8uH1RlHT8AbvBs3TQma+oJ0x645+3Qh6/Tsqsv/U2rhQ3TL3JESo1T2bpMZYxre5K
	09CNNFltrTAa9t2SXa3m1yui1nr4p3Gczl+Q+9g0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9ba5a0f-fdb31428-a08a-4900-a5bb-d22608eb805d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59efe35292fb9366a9c31b5f5e50f74f180c3845d76a328c6323bcbf586ccbdb
Date: Thu, 12 May 2022 19:24:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652383439
