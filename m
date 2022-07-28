Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0ABEC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658971253;
	h=To:Subject:From:Message-Id:Date;
	bh=uQjmIjEGlzswZo6LlVJqTLr0T8Erlmn0mJw18UbjAzs=;
	b=DHTxq+88+yhldBgb5kOHWmZy3aGugPu6F5uTUqnrGOvfF3qaGY6Kgeserz4a8L/v
	/+8JBSWNkBFJ4V2et+1wCHqcLeCZzMjkkgV7Fzfi/pROregEV7I9gRyBzhDX1ygw1f/
	/7X1RE9HPSNCUgqG/3W45esZrCcXkFYM03lgmDto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658971253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uQjmIjEGlzswZo6LlVJqTLr0T8Erlmn0mJw18UbjAzs=;
	b=ECDCsoRBgD7zFoHm386x4gF26gmumcBcC8ntzNh59Ze1P+2mWSdLzPV1IKg8pztj
	OT1urrfKXpixs1qfn4HSKjvC3FxviNAinlYRaV45qzVw0f6SerSYvHs4VvyVMWgG/+M
	id0zWf7s0xhYw4gawoXSDc+h2t1KdBMj+/wr3wsw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242646743-25555028-6821-49aa-9db0-bcc9701272b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77d9c955052df112db94b7873bbacd1316c1d545d0327c375297c2aa7107b326
Date: Thu, 28 Jul 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658971252
