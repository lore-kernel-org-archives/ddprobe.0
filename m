Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C563A4350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646691084;
	h=To:Subject:From:Message-Id:Date;
	bh=vnufzmJW3ijmJqbT0yG3SMzrlYuV3lxn6+WocQmd9VM=;
	b=byG7vpPzUPUACK9/2+NraJGbYY8bLZVJH8MLc2WPo95w2AbQoQDPu/EOz53KznC8
	/h3LKcWhAr/1cOwQLNsBn3U0ePBknEFa1+GXH7KdMN+BLgwME/aNcj8q0tR8jih37Yg
	MlwRjPv1wOxUGT2Peah9LV7c+I8M1USU77Q4Siac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646691084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnufzmJW3ijmJqbT0yG3SMzrlYuV3lxn6+WocQmd9VM=;
	b=JCiEmuPsy3Pw+ZDmxmgUevL88YA/XH+W8o0NgUH0CBh3FrGHC+rVI/jB7WHS5GeH
	dLcn8kIUGGXgEz7p8KGF0vfbnkgdSoHdXMZL27648ozDzzqwa8VQpMEgBIZQ6uMdAkP
	DniaCBaMhO8fOAFAFCD/UXaaDPQ4F1gbwVuakyY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f666fe9c9-f8481d6f-09b2-4f13-b74e-acb7bc22eb99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e09fdfc17d92b38c7ee87f1023617987b9ddb569978191aed546981153581283
Date: Mon, 7 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646691084
