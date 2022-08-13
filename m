Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C05362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660368053;
	h=To:Subject:From:Message-Id:Date;
	bh=00YLax5dGt2n/a/Er/RYU2OKYuFuPRXwglPEwmF2Jf0=;
	b=bx6iP8gsriQjVX/Owoo/9l6gEqVnY86VSdHrkdGh2YrH7+eCpU7oNiisg6p2euwP
	OsK1N6XR0QjOH9fsm7ebwd3Eq/3dP50bhL/jFekJ9c/sFZvSxeO4Actyuax9bhqViRs
	Mbl5u11Dkn7j+KtjqOUVtlfsTSb1uYLyxaPDz33I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660368053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=00YLax5dGt2n/a/Er/RYU2OKYuFuPRXwglPEwmF2Jf0=;
	b=dkbJRLCxEeLlpRNSLjVurRQiZOzMAJ/BYwVCEom7Cqt08JUpuk8l/znOoPDwdSlX
	DadlUVkeW/jxEvQqczrwyFoltVClJ6H/zG01Ngp65UbCuL5DZA1DjLwsobnSWtiTzQM
	gq9j6VgDNlqDYZa/wZwMe2RM/Ui+o17PRa3++NvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295a5e12b-149edf5f-82fc-4403-91bf-23fddfec200b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0a4d0e18b6b7668f50ee47ffac14cb1c6cdeb35f74399fe79b9aeab840804e8
Date: Sat, 13 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660368052
