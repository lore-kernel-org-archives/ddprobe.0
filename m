Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6059B20EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657080412;
	h=To:Subject:From:Message-Id:Date;
	bh=j/KVCIEk2FOyY4PHdl4IWGQvj2JNckdCkZpfqbh3qM8=;
	b=kSThx7ikjwpc286Sx/rjUM7pIeBrmD4PyEf5dWuQcIp2brvQ5DjORgzttkVb2Yf2
	AS/OIGPW8FHeKLuQLKqibcFbREEYE6W/NkXcAMVX+smAx9WNJR4VXCM3uz+HUK+/1Wy
	5RsQkB77zLFT/okrW2ySZASso3aI22b18b3lsFEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657080412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/KVCIEk2FOyY4PHdl4IWGQvj2JNckdCkZpfqbh3qM8=;
	b=TLV64e1weXR1qxhx+pn0sG5NJtkrghL/WwJ5Mh9RPVl9K0uEiFHEoUsYwM45zE+K
	NVsvKCSGPKKvd8c3m9jlLfsSUO/XqUFWrp7M7XeBzZpsDn5t8/b3ptis9km0YNY3Ix0
	UxXm6foUI9e0dMAfh0q66qwFS6kmJPXqiQQ7Q5gM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1b07874-eb61b2e1-339a-4846-a579-8f125decaed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c79ae9395842bc81ae3fa5e080189062aae87ce8175dbce1540da2fdcf602df
Date: Wed, 6 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657080412
