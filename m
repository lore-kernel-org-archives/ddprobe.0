Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A5E7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656500212;
	h=To:Subject:From:Message-Id:Date;
	bh=vrc+PBrbhyVguHZykYsh1ih9bJQDG9IM8/uSxAcb03U=;
	b=jwyeIBi4iqS24wC7P5Tfc2ZtMv9KisISYl8pKYP4Jy+diocKpVyFsh01ZJtoSErj
	pNUFTI06qBKbrVA59iEc6ZCLGidAEMksPEfo0Jqxsqx6NZA5t2VNoal12N0giXdLPu4
	W1oUYjO1FCTgrbSyQ/YE7+I1DaifUC31LqjBc31M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656500212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrc+PBrbhyVguHZykYsh1ih9bJQDG9IM8/uSxAcb03U=;
	b=I5i2woC3ALkVFURIsVXMtvJC9amh2laq9CqSLhvFAx+E722XOnxOYqftoonO+8+B
	9UZd4qxOqhMKEjsWk5Ad5Rn917xGyP765k9pwbh9j2nLWwnsdwQemgVAcPgkVxEKsem
	/LxxgLx6WjuVLfLAJoa5CWQ35MPZLH/Yvw04LftI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af1b522a-ac88eb3b-1349-45be-843a-901b904b2ace-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a83b09a92747e10b8a35c6db8bb5fd91c8f18ec65dcb1ad9b1c2386d2a411d3a
Date: Wed, 29 Jun 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656500212
