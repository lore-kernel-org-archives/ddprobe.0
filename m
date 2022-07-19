Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDD37B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658213812;
	h=To:Subject:From:Message-Id:Date;
	bh=zXxoqCig/Yv42d3RtPpZ7hJL82suFkux23hUkwZxCfE=;
	b=W5tDp3h2aDdKIz21UlcrgsoHOxzeGpx6zZKURPJS7dmi9/b2xWoMMTaQQBi+c4aU
	UU+V06zJQhfm72sYfroJQaACgkx26aRsyRzH+ml/1Vx4VGRO8t7S6lWw/+3yXT0kEZo
	CjU+FHODM/OZEkk9E/xeXetgyK7SGCHWZInx9lsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658213812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXxoqCig/Yv42d3RtPpZ7hJL82suFkux23hUkwZxCfE=;
	b=MWz2THoTFlheLk608o4B5nUlL6CQmN8C781RnCsXnvXaUtnPMJqXk5zFLVb5oznd
	GS2dtjNq6soWgfvXASoJTVQT2gbsH4eMl8m5UKPcgdvzoQZlQSloLbELSdTLPathU/i
	fQ5UUQSGfzHyyv8NXZV+RwtOlH/kVBXcTE3Lf3vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182153ec8f1-0e9b586c-b34f-47f7-8f39-b68b7ffbf3cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb029b399b8be6c8950bae7598659bf47d0764c19e9336e7a20db647be098ac
Date: Tue, 19 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658213812
