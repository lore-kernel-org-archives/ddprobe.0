Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A047A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659889253;
	h=To:Subject:From:Message-Id:Date;
	bh=ZA15Wjz4WcqVGw8IrfmzOkTY46n8gC4UCQ81WT0CX98=;
	b=kZX5ZZO9OpD8aI5/dwHSA/vbcK5T889F2OYg3yEH6U+F5eiBj9Zla8nUJjIh+5de
	wFuLrvOVLBodYDGVkrOyPsbhsqEER4Ez4zPuHBomdnl/GrSTAVgk5FS09eMHTsHhA8I
	lmE+zJ2oBA6wjP9mEpkPW0EkYuNiFOcfwLIg6wF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659889253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZA15Wjz4WcqVGw8IrfmzOkTY46n8gC4UCQ81WT0CX98=;
	b=RMK1SJDLKdlqxuWsHnbdwEl5HLCcFWREVQQi45xio9fbILu8aByeYm4eqtt3G1fp
	QqmEH/dvwK2hVEXeeqDjjP/knNn/eE6iDbDyLWRHkXAhcFwwKkHRsjjR/zD7bUTjRsQ
	Tcm6V/tlPXqQn6h5/gK8dkgS0swazxWFRDDhFZEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182791bf8f6-50b47312-7292-4fb5-8d14-2ff40e97d555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b5fdca3f6397d9e86eaed41849b4ffbffc9274ab2ac51fb3b78ee13de61029e
Date: Sun, 7 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659889252
