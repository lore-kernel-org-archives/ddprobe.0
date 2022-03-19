Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44E77B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647648384;
	h=To:Subject:From:Message-Id:Date;
	bh=5iJUfhefzItGjqXbJcM/RrHOZ/skeTye8I7qqBPxOYk=;
	b=SqRnrdLZURsriMq4Y44TobprvyEU/T68e2PACsize5PcrViMoNXbUVT1vktphst3
	4NwepL+84F0Sq4vXnGzWYpD/lkFfWcwmQdfQQKmpRJiSDV3twGzp93AorxREJgAUERc
	IzYTCZzXVk26wnGg7Z0NiyjE1zg8uYR1OIB/5CoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647648384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iJUfhefzItGjqXbJcM/RrHOZ/skeTye8I7qqBPxOYk=;
	b=BafEvTfSdGhrPMA2Ch5Q4TYoBBg+tvCbpdR9cEHudXLscqXlf+rl4V46ri/2BSA8
	tAoYAPmEPtd5zKvBNV3luJpqongDmq9u4uQhRBVBE0UqkfDy8CVXFeQE7NwG4SuI8AI
	eanYE5i9KAKDC7q/1h9euKRbLSdLoh6ys/xzZ0UA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f7f2729-9b49e429-d824-42cd-ad68-32b0a59ae8c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c7d3da0039f7f169e785285e6e65d553db123d8cb51f906565beb1b9d6957ef
Date: Sat, 19 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647648384
