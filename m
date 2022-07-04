Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C83D99
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656948412;
	h=To:Subject:From:Message-Id:Date;
	bh=BFBn+0E6/OnIxcoSyCG2YrcXPLfdAY2fCxHnivmTeLU=;
	b=PXWRju/coe+D4SuDLLkQpFTlL5N/ZhEw6z2mNHGrg/oc3gvyTMT/zZqH9or992if
	GjRvW/krHmBstSKP4EqFsdIM9gNeKpZ0i/v2XUm+3/nJ9QhUfYS1hyQuaUFMppDK3zw
	6CJphJBsskA/6eYXARXvE3InLGQd5mYkf7Z5bnZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656948412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFBn+0E6/OnIxcoSyCG2YrcXPLfdAY2fCxHnivmTeLU=;
	b=LbcRo/UKG69cWRCeBua89B/q/pOGA+bcNSg5kvLmBXjVZ0ZTU9US4CZUKqDrpvfR
	NuFURKs3tOJ8yPMhuoD8dfXMKDdHA5mGOrX09Pj4FJH9lmZRKBLERhJoTcINXTM6yXZ
	QXlI73A7ojQUY40kZxrYxMiFT76MD61YIWTso/KI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9d24fb1-55ad8292-3954-4754-8c7a-bfdcf727657c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 514dcd3562174787dd5d709dce2313087b81dccdddc4ad2ec97dfdda7142f21e
Date: Mon, 4 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656948412
