Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341742F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649080198;
	h=To:Subject:From:Message-Id:Date;
	bh=PVSzxE8Eu5Pym+8JCJbRNMl/yorlnHygZ22pRlq25PY=;
	b=DmAmiJw+YVtIGZOnwAx6a15BkVB/p+5wBDI8mbQJjVulz6uZi2bwMXnqHGl0qp4w
	j9NdFl0sMyCTgEKmT4KYbj5ca0G3pQVR0KW6+hnmYp7vg78fIjHjNJlJjVdw5fZ23/u
	xmTieZyGnINvNKEC3ub1GwMOcfEkBfmsrGs5+7oY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649080198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PVSzxE8Eu5Pym+8JCJbRNMl/yorlnHygZ22pRlq25PY=;
	b=g6T57v1FE62Tqq5Szl9a6gazwQCZquZ1N2ezHncsf61FOjfHzsxf2frKBbY46Non
	JOTBYh3WOhSC1P/LuMBK6z0tm07cRfR1fkeQisSW7/99PsVSaE2rP9Z3mjvUf028rw1
	tTIJH1GY8Lf+qer7YwWzy1f3acgOcR+2tlP/CcKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4d6e47b-7e2947c6-e0f0-4356-b9b7-bd20ef0a1b79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9863743fc5c32fd6cdf222f6ea7b9ea7700487832406987134b9100537dc0e10
Date: Mon, 4 Apr 2022 13:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649080198
