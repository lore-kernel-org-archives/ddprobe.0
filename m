Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1334D1FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658009212;
	h=To:Subject:From:Message-Id:Date;
	bh=xfcykF08YfcJYOK74Qp/q9Me1cV9kllJ287s+QpX6ns=;
	b=XFWhZT/Bjf5Lav/gXhgp6su84p7xmyaRVg8qUa3k9G2zpYum9CcFCmcoejYnlN0i
	fFvjMRpvWOYbeEHKBUtShEHk3tikMtUx7dGnQXJr1dL+9iXS3785ljlMQNNQkGgzt2c
	oPL7zamNvnaA2tbdBCmVPeQpReYuX8aQMRjaMrig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658009212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xfcykF08YfcJYOK74Qp/q9Me1cV9kllJ287s+QpX6ns=;
	b=ip1YZOPyo6PpR5kwupVyg+R+SC4oKTBmhIo0sJMy00mpdGtJqW78fHGP6/mvuiuq
	Uva3cKfG+ieLrru68GQ2Iecd7DekmoF3DNSuKtwNa7EEv9Le/jBy+OHQ5CNhnc4Ln7F
	pc67af3jq5Saa/kfnlqSGW6c3ce6kAvVd26Fqqak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182090cd5a0-69dd43a6-4f60-4eea-933a-1398c40548c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9a8cbf72d25a105cf53372b5b48ce57227188bf236ba5e6c29d7025255f0503
Date: Sat, 16 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658009212
