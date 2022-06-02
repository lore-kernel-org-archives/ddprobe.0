Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C06628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 01:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654134419;
	h=To:Subject:From:Message-Id:Date;
	bh=1YQF/tFQrxrqairjwvjE8mJQRFoL0pLTF2UVQ7ER62U=;
	b=C+ieOwSB/PQXBGzwB3wyzSz3Y+HJwOxfmZ9m5GKUjFRe8/qtb4EIuIpHgLXgrcsr
	hhpKXgqadJrCZgrttMfEE6hs/H6BybUCwS0QZ3UdSvICYxbMjqTtchAIW3Es3zsmSB2
	AbO7r/CSxo0GpOph017DSrXsPhDs69UvHEzPJH4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654134419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1YQF/tFQrxrqairjwvjE8mJQRFoL0pLTF2UVQ7ER62U=;
	b=QNqVkDBaHWU9LRilh2PkI6v6iaHlFiGygWwKJ//VaVN21KGnC3WYD7ktKfm7Ui/S
	edktND5xDU3v05mva+5Pujzc39lzRLzJ4PDd8jsUC037x/YXXsChdK2g1KCZq/HrQR0
	3LcNL0GZRDZc/TVeu/Ag4HBEf1xYA+vh7HizJw8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018122182f58-85fd3400-d40d-4d2a-a6fc-61f76107ebdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e49be5d441e0b93279bf0a882880b6fa158f61d1cf225d0914ad27452239feb1
Date: Thu, 2 Jun 2022 01:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654134419
