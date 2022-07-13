Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E72915AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657753012;
	h=To:Subject:From:Message-Id:Date;
	bh=nLg5gMJ6e2CFdBYF2FCtppg83BMH8pGNtgqJ+S0FAmM=;
	b=en9bjVgMVtc+8g3lWsQ/5yR0EHK/npCAvVHFuqNZaStHdvbSKq5Lg5yjgCi46GLb
	G8Zbbjt96KJp6pRhbMgKITjBK31GuLgGlrfK8E/lHlnWijM8HwhDlUCyP4zvLAJ9Cmd
	RnRYohwl162KyV0iuC7+7/ONRzuqxL1VorCVUD7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657753012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nLg5gMJ6e2CFdBYF2FCtppg83BMH8pGNtgqJ+S0FAmM=;
	b=hF2N309D5CEWyuDO8KTmJlXQU77maPw6iMhRn9vGcUNYXotOfw6uTNm/eVimTvqs
	oYYtVtGU1mKB+YzUZaKssIWMVcsBlunMr9v6G2Nqvo/sipJtzrcQNYSSx+78U3mGXeP
	wfL4GqBH450ElZ9Qvzq9ZKWJAlF6DCXmvvrLojRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9c788be-b8d29188-8329-4134-a3a6-237e75da2df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ad044fea769d9606707fdb8e1df4c1cb2f221621611b1dca4b55c78b2e06259
Date: Wed, 13 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657753012
