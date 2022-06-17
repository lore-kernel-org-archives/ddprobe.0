Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85952F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655464619;
	h=To:Subject:From:Message-Id:Date;
	bh=gUfEzKX2gI7DRwgrJxY5ayEr3ZUNRkHnLAAi3Kf+m4c=;
	b=YzzbVJu8MA3y7i3Ljuaq7ynDVTSBOU1pQsnVBp7ce+unu5d9aZC6+75fGzXCU5zI
	PhbNFpy0GdGeyd0WsGUwJ/nI76YPfnHzf6ODQBjUihAPAMxT3YBso4/TTU6HIKsG6yy
	UiBjwR8HH5GuMg8HXWycH8033hBD1FSVeE82UC/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655464619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gUfEzKX2gI7DRwgrJxY5ayEr3ZUNRkHnLAAi3Kf+m4c=;
	b=MJKVpfvGm0OM8vtHYCeB4/BGYVM6kodTJTV+P5hXdbyXNt4SomlyPQI0zhM6O/jr
	Ea3E5F8n5EYMTt67msra0ttoGOGGobZzxnA3FjwvhtXyREyjsYqLWBJdPYp1zuyNWwq
	ohieNje2r9l1JPUiQcfG/1BWs20s3sCCMEQntsms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171616ce7-725edf98-98e0-4454-89d0-066a07d79a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcee7b6bdb69c9e7924ca0f8ee09517bac8435e82ee58db70db262ba662f5087
Date: Fri, 17 Jun 2022 11:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655464619
