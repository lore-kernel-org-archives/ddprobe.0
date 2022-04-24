Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E74F17D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 12:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650804778;
	h=To:Subject:From:Message-Id:Date;
	bh=/kqo2w+TMvBoF/dL5dWTHjhUUoorGeoXGFrU4p8aQpM=;
	b=J1Nianp7uwidzpvDU9BYYwAZGlL3bdNuAqUt6HdV1rKywXxHjC397GkdS43U7plb
	LY4V/vIuYmwgIVzzLVXEL/vVM7R36LeVTplv1GvE4pq6jTfrY4YLR3tbuDQysGe6WTd
	wDJXVph4CIq/HFhTI/pBkv2aEetr6LpmaJspn/YQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650804778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/kqo2w+TMvBoF/dL5dWTHjhUUoorGeoXGFrU4p8aQpM=;
	b=bUEZiJv6ubcnr8tm7v7wmdsJS0/BcN+m1hQKbj5wyBAPX2iZzWKDg5y6qS7eaULz
	ZuRzv4bDQyAaO2cAV4wwNpDilrXMyWP9AimlwpW5vzv59aiyrRtAZ5dbijuduJmW5Ts
	n8YXSiq7s1/c2xdPoW6vkKotO8G6ZpfFogWjTgIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805ba1e572-6dde22ae-a3d9-44db-81db-215cffa082cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78e82e0b17ec00c4d9d887fb9ba904f540b3873e6caaba1deccb0463d9a5c926
Date: Sun, 24 Apr 2022 12:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650804778
