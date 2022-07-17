Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EECB7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658016412;
	h=To:Subject:From:Message-Id:Date;
	bh=Rh9Z58Xqa5sa4MIUcTKnwTYi75Zd735zd27Kw30uiEU=;
	b=Q50SQugzVw5Fa/s5SIvrvDciehpSmmopiObYpn+LBaY9hMZjcIllf6w+0+5zRE82
	lvqA5JsCmhbOnTV4yO8DFPoX+zJ1jDSFDi4/fjlSst8uZi4an7kiIf/svr8EM794iXm
	oJ3fWqHjcMcr9JZgKLhZTqbMf/2yCMpx4lhwk+44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658016412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rh9Z58Xqa5sa4MIUcTKnwTYi75Zd735zd27Kw30uiEU=;
	b=Afvagvb0pZavZ4WRs5y+KWpM4kyR4swDqGscjE74UUTcTmTsEnUm0UA1FxqKZkM0
	TjNiUCbA/vfyPQdihPmWgCCNxe5vr3zFGfpNmt9IAy6UzRX1jqbzCg6KOLItSpHAVRS
	Ih7ZrSqctuAX39LJxlMfTTAQsF3n5+KxJ1QDpbwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182097ab2a2-6073c3df-30ce-415a-b8a0-f93608050096-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c56d91307f9bb5d0aa3a0e235567ad5b7afa5f964078924274d1e6fc9228957
Date: Sun, 17 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658016412
