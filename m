Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFF57B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 06:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651213978;
	h=To:Subject:From:Message-Id:Date;
	bh=biyNt4bHCUFw1ysW5xNFz5LkKDK3kbXBio0mvY9vayw=;
	b=AozA8dRu1evoIuHF2aslXtoB/kif99yDqILPXJeesCiu4rabaKVQ26Uw7Pb8Et7K
	ZawEG34jenjVH5XsIkrmoS83Ly8Vw5HUNn7sy9u3lucmKnOlQKmx4wax+wOO8jjU4lL
	jqngKvVDerhDW3mxDWdPoVFUJpkXwCtjDtVBdJyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651213978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=biyNt4bHCUFw1ysW5xNFz5LkKDK3kbXBio0mvY9vayw=;
	b=huyhIEOtB7KXRD0VftqK12EkKZRZ0odQeK6NwMcoeBkCWK2L9n5NOvO9vdQN2NNe
	faDBhoTn8PIFQNHtShMw+d16KQwuj14MM+B6OtOqCmmorJbtJy+g5E4Ar41V/bCy32f
	U4k+o6mvzS/5tr9bI/7Yh2ZTyOrjwspP976KTVuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807405ca7a-20b9b860-8017-485c-9399-6252c906c527-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4f25cafbd90ca8eafd4ccf33527ad1cbe3f73093272e9402887b631a888da4c
Date: Fri, 29 Apr 2022 06:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651213978
