Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC3B7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 17:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650733678;
	h=To:Subject:From:Message-Id:Date;
	bh=7a5gXUa9XU2S1jixYiQQBOJNTGs0TiAxV5boFhXqnxw=;
	b=jlQ6KVHFYOr34wCFlHPEXPB1GZfeZefu1a7W6ZBYXszSQYSoTHvqWoBzftBUStIV
	b2/DkfimnzZvr1DhS8zzJBOHEzj5hAtrvfhCttD1gUF7jRq9wK4RjaRgJeCT8mLloc3
	6HbSvhKua4ZHnVwf9Tm8HqYyaRMsz2mBnXAwLr4s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650733678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7a5gXUa9XU2S1jixYiQQBOJNTGs0TiAxV5boFhXqnxw=;
	b=Fby+zLtZy3pmtm/l/FmF6RwGnxbIyrY73etJ2XM6pE8QQCQuUvP2G2HCn56Bho5c
	h8AxDIkKYnHMyEGhXybUuvMQODdTjSYXazoxP9TwzVCxqRQ+y82HNr1pTxBmI+kq/EJ
	y2N34NDHyOIbYDHE3v4i51pA7Gm5migC57HQszIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805764fefa-a52f74e4-b510-4427-a380-4aa0307fdba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdc3fe2bbb1fd595597becf7ae3ab55d7dde592fccce348276186429d8368369
Date: Sat, 23 Apr 2022 17:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650733678
