Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E9E17CC
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646167884;
	h=To:Subject:From:Message-Id:Date;
	bh=gVbMQeb3RTIEwosFRxdzuR+AP265sBdOOE2M18x2Oik=;
	b=Wl+MEI6D79mBezsGglEd4hwtaLweRVYdj+aRzqRYR20SG7o2D3p5JsKoiH3z3BHL
	bTOwTXnYD+rgaN0X5uV/uefViM0K0972WkLCt6x70UU1N7v10rGvucOuVe+38cKWnCy
	ulsD/WZLT0Fm4P6ov+WG2pzb2GL1KTaHdc87o9UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646167884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gVbMQeb3RTIEwosFRxdzuR+AP265sBdOOE2M18x2Oik=;
	b=ctvq7tresPbQW8+bRCIxdOlNd3pOvtgPgHrh8nGJk8tbFfFc/Q2YE6L/2LtDixv5
	RKqt0YTzT4tMyVlqb7aMHGcW3wYI4pj8nGlS0BlR5qpy+hz2ukW08K6P3/dMiylEiyO
	H1xNWBw/tBnHrYO9Qedql3hLriQCe0JLnlAOuZXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f474083d7-7aa165a3-3fa5-4d34-92ed-c7a9a913f94e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9a1e80fe4fa852c2313f84ee0e9bcd412c7ffd5ed97d03290edb111518681d7
Date: Tue, 1 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646167884
