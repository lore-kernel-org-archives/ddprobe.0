Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354F07A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659034852;
	h=To:Subject:From:Message-Id:Date;
	bh=c6dcGjB2MfXz0kVC0UUhxoQFKnJyB9Hwjthe3kj2M9A=;
	b=QJLCemn/Mz3mxf2S7RFi8mQErBSG4TzArB2D0iN7OtFhuzOcpIVbyXAuYe/Y+f5f
	EXLuaAzA1et1dxua2GN+hbWO0Hjg+wjoeJY6P7vSFW4X4VvNsrKRzqo1lQpB7Qc9/cR
	6SAJ+6n5UgMMZV6E5wNCh2qCls2oFbvuhC8uVH1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659034852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c6dcGjB2MfXz0kVC0UUhxoQFKnJyB9Hwjthe3kj2M9A=;
	b=GvXkF1tfXtYpeBRLrdy9iIzCMR63MNVBh841C4ql+OOVh6yx84bgQd8Mc7NNOO1s
	64sIUZ9AgUm+iE6x+1D4zQfl7ZVvSa/lDUthTwDd4QXfBixxQ9g4xyy5YyPgseROhoE
	uf/kHP3l5+YtTzt7cQyIgk7WOGUAMmXo0iTVgh/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182462edcc5-0f93ec53-2382-44e8-9149-d8dd04f57ba3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44bc10104fdd6747bc39bb25f7e45a2bd9554a7c7363a24623ee5f2e08b85dec
Date: Thu, 28 Jul 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659034852
