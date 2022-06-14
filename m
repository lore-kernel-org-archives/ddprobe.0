Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118A97C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655204159;
	h=To:Subject:From:Message-Id:Date;
	bh=9HVSRlIeYdQq+kIk40mUtInGU+60A6V3cmC4IFGAZZY=;
	b=gDcUaR67xwvBgKBs/LYzLY7gw26cYbuTxL4Vm0h+k6KHVEORTOr+BPvUuiJUT0tz
	PYIyxaohEWTaB2/U2svvXhpYO638H1MkGLufB+8dzQwHyXJ9ltWhd8HEDLdSFZ5ArU7
	DTl6SpTnKIeRusWfXnstZ402V2v4I9Vnpa26e4rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655204159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9HVSRlIeYdQq+kIk40mUtInGU+60A6V3cmC4IFGAZZY=;
	b=W5uJO/+ZJONa3NEjtb0pHrlxACzPONNUiK4BgKPx1Qqxko+NBuIdWNMZ7qicrv9F
	vN6zd5dY0NQyAvNL1aDXqhwjNpacE8jkhV09rnheGtT1FlAPIkEJFuhPKBL44Kqq1Jl
	KD3fV+Rv3uZBy9JMGVpMH691lIvw0m8SBPmSNXvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161db1f39-d15ee5cd-8ca0-431b-a945-2e17084f1962-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b9f15f90227d1b5d3dd6b5d0976171fbc7cdbae981dacbf63192544d6f6240
Date: Tue, 14 Jun 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655204159
