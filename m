Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385692F33
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657577812;
	h=To:Subject:From:Message-Id:Date;
	bh=WS+TWX5g5/tYmgZERBupKDpu+VOy18QrvsCZ9kSmciQ=;
	b=gjMws/srf5/U9IwWrXF4MVRgmh2CRToCccokzR5zY/K36yDZ6zyF/wvUXriYKziS
	7diZPnw8qBV1G0WMkYtQQWDTUiQJNos2simSoH4Je7/6Pw+sFoxPl9TCbiYjnEzUp7f
	u2CWw8PsoQDwR65c56rG9ylNJPR5m9YXY+DNjRsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657577812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WS+TWX5g5/tYmgZERBupKDpu+VOy18QrvsCZ9kSmciQ=;
	b=WnPQsUg5sxbUdkZ1GlpY/Odwzlu3zJtlxBRXkq2q8L1USw/VvpE4mBy4laDHVS4U
	jiyRxmYmblo6mtzQjkQhfWjUHevgs/+HGfoNwJjrx4dRJUE6VwrfkWe36cCjGIxykoE
	tnaJnpne/83s3nftoFR+k7Qieg43lU82lXrfRX1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef563168-a2f46b74-d9e8-467e-a35a-e1120170319e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd76bd7a176e2820b47aee27520e79aad2f4998f92c197c52d3dfd930b368d69
Date: Mon, 11 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657577812
