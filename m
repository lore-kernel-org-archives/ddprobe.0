Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20847A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645839685;
	h=To:Subject:From:Message-Id:Date;
	bh=3w6CzEccetdEC6mr0AJoni2DlxCnHvoez46EZ7Nhju4=;
	b=kwlwMx9q3Z/Padw1apCB5AAZbl19ipWj6827oPENJ3o981db7VeAcrkIMKoQ4/ri
	PdCofTYn0S6nc/FhyKqHeNdKi1yG3QkC2HMziVGnH8VWz6xuuFitVTvbsqZEPP1CoDk
	WkprIjOsQgo5qk406ue+CkbnEHYWsMZNeSG6OYrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645839685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3w6CzEccetdEC6mr0AJoni2DlxCnHvoez46EZ7Nhju4=;
	b=goovfV0cGoYbwaQUw/LHJ7uKyLQa46uCaJPbH+x1eElKtVJvTgP79QfqD+VM2e2U
	8wRBPNEdNQyD++XVHC2rBQ4Q/AbDJd6NF+RWJu7fkSr8q4H0vtDUqCci03tGzfLk/67
	2fUNhlSbA6dg5du3MdHq+dgQMQz1JRNyLO0myvqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33b094ca-e608bf69-1040-4c90-b2f1-c153daafb573-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7e74627672d641b5d2e22fe01f6f301fefdd73ca10ee5f27e7c93dc807b9545
Date: Sat, 26 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645839684
