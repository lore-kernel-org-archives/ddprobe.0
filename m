Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CCC187A
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659798053;
	h=To:Subject:From:Message-Id:Date;
	bh=GAP6uSKwyTVW/9PWy9bG9+oHZiMMrFGB7nTSv3BSZbs=;
	b=VKxpe//rFwWfR0fZpFdcQ6vysa+a7a3heHuAljf7ZjPXsIGycNxJW2hG3jY5XDoV
	zG8lJKr/brNBHYzYltHP8vKcsMFCR7oy9HzjVG0vW6/bUo5wtJ5B7J//qLQvE9K2GEW
	ibln8xdYbl+fxCwvFOXWy9J8QQl+SjOkEKpGGSrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659798053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAP6uSKwyTVW/9PWy9bG9+oHZiMMrFGB7nTSv3BSZbs=;
	b=kmVfMgpwWdFal9cUIZepRrln61SXJ1CGKnnpoMS/O4vlWMFaGTNst8TiNFpKO79Q
	CUE8fHtoidHxcQcyDvJMG8PJwzqwNhsFeNI6AeOJvQnNiCGYFaOPnulZvzjjfHUMwXQ
	adzl8JDAJgayFMtyPGv3Ez9YhoAPkZljQ1pUJwGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273ac5eb5-4d6ddb4b-362a-497c-8b5d-4d7baaedfa8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 353c8caaddabfdcdfe494f3b5ce441727baf9e660feaea2959daa8ed6d35ae1b
Date: Sat, 6 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659798052
