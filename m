Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DF47E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658554612;
	h=To:Subject:From:Message-Id:Date;
	bh=euYzTEf3yfYhtZzvR417N93VKHCaHP6eCX0X6RVE2MY=;
	b=MKHMkXIuqgnsG0a81Pp85SoTJZoWPFIdjvRhCezk7LXprQx9hKndWiEymzcCtKq1
	dLrCm2zu/pfLE5isF9sPOvr2cV0ZeqA/3519speZXoDNCnA+frganmN8D9AhfwxZraw
	du8KK3BGvD3eK/NY+Gi9qQ+jW9QTVDNyEF39GsVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658554612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=euYzTEf3yfYhtZzvR417N93VKHCaHP6eCX0X6RVE2MY=;
	b=dNVYZgni1sBRUjntZKN/ffULuPzR/oI+0G683ZfeEgNykKw0aSQPkbTHv9T+/ItZ
	/PqhcglWtnAHxbs/Go8xSrFXxxM/X6Q+2C/i2fFaEk9TWOZv/AA40PcydsfyN/Pz7wX
	n3J6o2jaaJ9iyv4gAHUaxdjCsUrdly6t3Qw6QBsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182298efa26-20b41610-00d5-4222-80e7-93093c23873d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4cf3324dd9b8af715cb4f677d68446ba7622062e44fc9279c1662d40b6596f1
Date: Sat, 23 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658554612
