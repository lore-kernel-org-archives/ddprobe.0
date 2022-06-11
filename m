Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BD07A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 12:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654952039;
	h=To:Subject:From:Message-Id:Date;
	bh=iOIOpLGojItO9Bd3eXx1+3EsK8rH3ZO0qDNIQuVFlYM=;
	b=bY/07ismk6hw6b7OZsHjFW3E7/t0BQbZSZogNq1jZOtvn8Vq3futWBuejoK3/IqO
	ju2OJ45/9P+WHXTIlTCwXV8J+F/ROOJTHDaE/rJRpSgs9EXgz2hSIwBb6BZLKlvQ+8k
	2BeLSew1GkAz2SqeXM6VA6jxLABnTpPZTsJjBEN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654952039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOIOpLGojItO9Bd3eXx1+3EsK8rH3ZO0qDNIQuVFlYM=;
	b=FSQ0CIek/LSSqeNZ9mPZHac8Rgo4orDH1RLndVm8TfMwxSAf12+k+Dt9L0CDy+5N
	uweV+S2Yk2jTeP08InFR67cVE6vKAw3U+UuJoPk1vlbK/NJb0YBz7ppcwXqV4423OsE
	YyaxDpi706ZPmHfu0g79vj/LDfoAChKr2NMcrKlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152d41371-3195c09d-3844-4031-805f-2af5933cb8fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15851fe319247c90657f52cd915f5e351e98a8dcbc02d56894a823361a6ef1fb
Date: Sat, 11 Jun 2022 12:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654952039
