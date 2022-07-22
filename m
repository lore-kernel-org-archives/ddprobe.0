Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AC115A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658467612;
	h=To:Subject:From:Message-Id:Date;
	bh=30BIJWguz4xVrVs85aAGjNyYEGBzD1aALUhf2ZYqjEM=;
	b=ByMNbPWDGkzQ/SZRz8ioPjJK8ieNVl2LdmtE9mre/5a2+AO++Id0AyD/91spopgG
	niIKANOw0Gi+Q5EEo9PVK/HJv7IJP3dRTI3sQmnZhaa83w1Ph3Sp6l/WMEsb6CAhARf
	h6wAjzKDSG9TpV65BWRnp/7BCOhoylTtCl5A7H8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658467612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=30BIJWguz4xVrVs85aAGjNyYEGBzD1aALUhf2ZYqjEM=;
	b=Jv9gzxWx+ZDAxHief8SS1OP2ebumrvEc3V5XM2FU8FwqY8wiM/9qwk+oh9oTEnKH
	L1KDbCEs8K+vF3SvaLftI6EMNFEqt/4Q7lPoOTQao5hEGObjEvK3d6SS05k7ez/vvnf
	bXgX8qVyECJR/WtmQoKzw/gGmsAbJmCIWxWDL5Rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182245f76d5-8202f108-daf7-430a-a5b1-199ebc8e17f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8c9a86fed45d80c2e5f731a688e5e560d15a21e9427802e9ae5e951899d5324
Date: Fri, 22 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658467612
