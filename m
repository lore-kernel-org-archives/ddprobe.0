Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F4E7F
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651668538;
	h=To:Subject:From:Message-Id:Date;
	bh=GJ/dSTuiUyWgfTvCOPAtrV2q1R7Wdr1IToqdnQ2MbSY=;
	b=MQ0KFw33vqWL80HQxbgUyYd3YrYvZdlCmvl6ZouJh9rQvhU9wI//xbajB8sIILQ9
	1QN1lneIDM37KXhDSrnvLsIaRC32DE+LCYDvB/H7fPD91UzYaf8vZ0n82jut9UKKeOE
	L9XJIWeeNmGdOsNj6p0iUWkSvWBvqe/qxiiThmtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651668538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GJ/dSTuiUyWgfTvCOPAtrV2q1R7Wdr1IToqdnQ2MbSY=;
	b=PW9RjT35LQG4Gf6xlDrf3jJ9mh/CaH0fO+uPtud4+31xMcQ3R+A2dF/Nh+MtoVHr
	Z6GdvlU/n7IHuWA2myZ0yQglFJyJSo/n7CErS3sxj+r5CcxVwQ9yn6Sx6ZPEXvoR8Yt
	i9aTrL2HKRQviRNFml2MXd4xIrm7QgwYbbbKnPio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f1dd390-785b20de-6c9e-45b5-9746-446f944ac7f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7711dc2246045275fac3c4843c87aab84f4058c5a078bee0bcacd660371e7b93
Date: Wed, 4 May 2022 12:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651668538
