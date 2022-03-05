Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8E77E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646448684;
	h=To:Subject:From:Message-Id:Date;
	bh=FUCP2jrXhsjEHBqQiSt4pmmL/vYaug8L1FBzNDxU7iw=;
	b=JEDnF0qClJ9V/Gr0NdQ7djpmA0mt45aEuP+OBEjvX7H3zdtXIGgKRhqYJblilAvC
	K7I1yFTiigYmLbSAdpEkjoIsClLfavqBgJ2hk8bgHQGhdkamkMxj0x5ecBLUlAz3dnj
	psGBb2wCCim0u/R7O3J8WShfCIrF2TMx6T83Gods=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646448684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FUCP2jrXhsjEHBqQiSt4pmmL/vYaug8L1FBzNDxU7iw=;
	b=YtbDk2JbEHOrAOojuUBpHAAMftGMel0otVJeLYU/eufuHFIEpd8Sn/nuo/aJHAj+
	5Pd5cEoh62NN6238VuVHqwvKv9NkrojjOJhz1Iyo4+SLLMhSnIOVG6OWUKuurammZLu
	Ti13BiUjzjzl2nPTZv8hl5WJfACeLjdAYZ+0pMeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57fd2eee-a06d8b7b-5ae2-4a23-9a0d-677927993d4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f415bec394512f717bdcb3aa1fe039129552368f26ff940f66c521c8f60deb38
Date: Sat, 5 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646448684
