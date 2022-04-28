Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDEA3F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 13:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651151158;
	h=To:Subject:From:Message-Id:Date;
	bh=NVCEwPiWPmLOy0okBgAzq36XNEewWTW1WH9v30z2LBM=;
	b=P27zzAQzYmDRa7y+aEFCws6mtEoNO8Rzwhmi7//LjV2EcMEMVGYNHKgqhOB/Jsir
	hfPijs7gTF8pwzRbA5nBP9HiV/2LbeeeKcfE5YwEuOgmLJXRpjW14NfTBidQgXWCrYU
	VwNQ7b/u0WHbwrPjdYBpsPf3K9YiO0FlyFmtYgxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651151158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVCEwPiWPmLOy0okBgAzq36XNEewWTW1WH9v30z2LBM=;
	b=Y1AZX9RXnaVcg4s/xc3tHIrCg5Bolm1s+6vk5mNQ8SmEWQ78WV5A1fajzDPtCvcR
	r3hfqU+m3jtNqHM5LM6UlpLVXYj9ugxnQqObVM8p347gVxzakW3JaaJ7a2vKMzc3fzx
	nd3Cz+qHDvDH1ejFf8aqO436efSwMDA5mXWV1IvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070473c20-f44693d4-adae-4460-8797-36e2c49f7abc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc07d7440853dd6d907e99102b43fd2c8850b51e1bfd0c4f5d9fdf213af157d6
Date: Thu, 28 Apr 2022 13:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651151158
