Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E914F17E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 08:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651566058;
	h=To:Subject:From:Message-Id:Date;
	bh=9Prss/Sqlnxve2XpAWq+uF2hs64inn1V/1AGYG7MIuw=;
	b=ZFeSYZr27Nlek67nErId1WVQ/qQ83bCwUWlzcvHwdxLp+QxQMVyzo6UVJ8fXUyyN
	wMqCZiYS8A6BJBk2wWifCLALfq5VwbIXnPaBBNcar9h+Wkux7FCi4+gkmOkdJIT6M8y
	mxpxPEF97jXhPG3zSzomElnX7uYW1GF19OPpKDjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651566058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Prss/Sqlnxve2XpAWq+uF2hs64inn1V/1AGYG7MIuw=;
	b=AiVQlsUtPP7uQeYF033F2Ma7sFkG/LKNBc+t/gHMHIBjgiRIkFo5tFR3gcehPcxV
	S921J3gB12ALdzrd5u+WqW//QQgOWe2gi8NcEYVq/qnzLKc4z/mNeo8suhSTFLnRAhS
	5zPybKpXVlbTZmhDvLfRZjleJEPCTE/jFQhCH6MA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089021b13-880e687f-1909-4b0d-bdf3-12b420f22cb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b8f5f9eb1bf5e5428c145ede9a03d1284ec234aec7d6b0579dd6495bb503c6c
Date: Tue, 3 May 2022 08:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651566058
