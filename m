Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87FC8160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645360884;
	h=To:Subject:From:Message-Id:Date;
	bh=MgA3ymkuhinkMRx1xBgneE1zK1OLEuCA+0dVW1CgfNM=;
	b=YjqE9hbyy5AxIX+thyN/5ZQbfaloeJ9nhsyVmQ77ozvSfbqFdyvCqEdAUoeOURq7
	0I6yHbwpF7bmcaqqRMT9fs3FLgfLeGWuwxbDAJNLYv3solelqK3drwFyB4IHemTyEqv
	QPOZNjL3Tc8UXAcPBa04PNY95W5pJA/cFxtiHORk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645360884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MgA3ymkuhinkMRx1xBgneE1zK1OLEuCA+0dVW1CgfNM=;
	b=dyL7nioCPxIk6ttnfUZ6TTtJtQpFucl45D0JkktuKldjddCAAELDW2lye2jEJKDk
	roiWdw/1TBiAETao5awmkS7lidq6eqjK6zaDE/1wRNd0vzDk3ATzRRLVEQlScnOqGHA
	fXaWdzlX7qvcHpv+UA252Vzn0eRaqS/pB/LpXsUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1726ac3e-98f521ab-f35f-4ba2-a7bf-e66b52ad02bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf6e2b1c4edc6632415e260ff580bb7bbbfa16446e5b1f96db5ad920df309eb
Date: Sun, 20 Feb 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645360884
