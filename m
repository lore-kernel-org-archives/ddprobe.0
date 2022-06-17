Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A71B4C95
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655508599;
	h=To:Subject:From:Message-Id:Date;
	bh=ToTVP+gkg3uBHUKZcbSUlSsRQ3hG7I5lJsAggmnclvo=;
	b=igD5oh4x62pq9BksjehDkJ1UlIO2uRStmmW8bJz5hc1YHYAND/eJ9boiMVf8Oaz2
	cbBa5oxbr2rwtmXgSC+JJf56vL5v/vHtlhEYbn8qp/eWRMXG4YGbenLfTvq2ByiYN7g
	QEcxcDsBpYTO8omc7r7VpuQdFUYraMRrdSSCiRFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655508599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ToTVP+gkg3uBHUKZcbSUlSsRQ3hG7I5lJsAggmnclvo=;
	b=NeJhVRHY6y3enXjvgZ70Ykv7v4hTJefC2iWhVelbYKZXO0sToqRBVwR9YD9vp60W
	pt4iV4c2fO/jGXLLFTfbHipXi3eMEefRXTPdFuv+wiub+i1Fu4rnxNyLJ/HGDnQ7PTJ
	TDU402yU98b8omB9yAqvNeaiqESjs6rF1c+PS1dI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181740081b7-36a56ac9-2cf6-4635-a8c5-fc11ba92932c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0afd4d9184503ebcc5578313be2759d80e55d671a438476a973fcc87d923f03a
Date: Fri, 17 Jun 2022 23:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655508599
