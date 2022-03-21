Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750B4612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647889284;
	h=To:Subject:From:Message-Id:Date;
	bh=qo2hu3uqfhDd4AiEasha49YT7Nh0lEp9hn9AY9IB2eA=;
	b=RI0jjf4bS2FpwGCBBonKTZl1ZCtDboMmQuo9zWCIs7m4foxK/REGC3+H+L3kb+cH
	Vb+FSndZflkAOGlnBNVByBquJJMkHK87i7CYOIV6hZnUcUeP+jk62byJ9qPPm5Y48mh
	lslmTKXExNqnPtDjYyx6gXRgoCkJKgIoCPAevQjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647889284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qo2hu3uqfhDd4AiEasha49YT7Nh0lEp9hn9AY9IB2eA=;
	b=cPRBeHKfZqHH0BwVToE4RYmittg7/7ZhPfQx4HHKFePUNdtEQyXkhIAGVllDQ9ik
	F3/90zNUNhrn8PkmX4+qDUs8Ki+Fijcgczw6dtmP7ecgbxCiGh5gRqdPVCUDPTW2zue
	oLL2iWDS+dLV2hPWr6o7iA8KHESMnBAY9TCxQ7Og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faddafeb5-c37cd4c5-f021-4cbe-bb77-df0b79b795ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2cb930174cb9cc4b7cbffa20fdd57ceda6d5eb035f287fadafcda4106210ddb
Date: Mon, 21 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647889284
