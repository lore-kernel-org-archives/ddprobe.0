Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5327E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650960598;
	h=To:Subject:From:Message-Id:Date;
	bh=0HDvlQIevqmQUs2vPyg7y2wlVvF4MpNqgIpUTfJUWWg=;
	b=KDhZ+v+x1a6EK/5aeVa/dSxAcjPKe/lbn4YCZHe18ZgbcIFPGe46jjezzqGp+5Ss
	sOl58R1nnjUKRjKqFIKgx33Zy7+CLFLHylTGC5HptpFIoxvWrV2tHBsD7h/TZFLETBJ
	Bj569A16EtTKj7JMersyfULozbU0sR6Kjs/U4yrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650960598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0HDvlQIevqmQUs2vPyg7y2wlVvF4MpNqgIpUTfJUWWg=;
	b=O6pbBR1UtiPhPhzbNyB06xg77lpQN7DOtmPoY0DMsZlRjtwQdQn479wThDefqw/B
	1NTXnazzIe4SkD3MKGW+1BozmGCdNFES8vYahcBHDZ4AtCaKgScY+3w9O8GClvLBhqg
	Y6Vl8o1Cz+UkW9yIUIhbSxfIF18R0ys9TkxiAJAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064eb8507-398bdc6a-b719-44c9-849b-e5efb8e1cbca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21a44540286c89965ccca19a85aa5d55622ab0d2ac264a65dc02df17c43494d6
Date: Tue, 26 Apr 2022 08:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650960598
