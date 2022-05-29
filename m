Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA9F17C2
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653817799;
	h=To:Subject:From:Message-Id:Date;
	bh=2qOxPqldkgt38pJ/ydFrWJpcEHu+uRgI4eBskvhhmpQ=;
	b=aLqts3i+NxxsU1CSmHSBGCXjeu/7nGdRgNHynn21vbpp1XGKBaoy6jH2P4fKq/Hp
	3XuJ3pPkXxUUHbs9DPL3sdBVzUj27VAYks27Z4OXD69edGxi0nlTxYxe4HNyDZpHRIJ
	NZzAnySuGEeyMwT08j+bMav7td/YemrADKAa7AuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653817799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2qOxPqldkgt38pJ/ydFrWJpcEHu+uRgI4eBskvhhmpQ=;
	b=FE8vtxh8k7VjvGFNvN3ddDHYfaqtV11vLCOwzCDRlYqg3JiYTs5BPptwBlemMkjC
	LSCzlwSqf7vOIvYcbeASDNGaOSa/6lU1wgAKZfNqLo/QiorKWXhS9EGJIy50df/n830
	RMbuwxIopPjqPX8wCJewuprfZR6MB/dBeJuJYvy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f38f26e-f38bdbbb-99b6-462d-8536-b578a2d4d7a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b580e438206da503df44a941753b8cdfba199b58080710d5460dcfafbbcd5cd0
Date: Sun, 29 May 2022 09:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653817799
