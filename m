Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1887F7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659024053;
	h=To:Subject:From:Message-Id:Date;
	bh=O2h1rEK6nbYxZn4pyz1PhFEsveXm3Bez1I7uFZcOJOU=;
	b=Le1395ZVjAR3dWiBQBMoG6r9zavUvN+a4XAv8Plvr43yLWJ892ky4hTZlFF0x9gH
	7zvgpV5/gXxzoUEAk7zlp9WfdJGizrKO8YDQwmajB+EoG+JfOjEhnjABWSfnriY7sHv
	D7uhSp5+LsPf1gZBmtCeU9X2NdSFeukVpA9Nttsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659024053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O2h1rEK6nbYxZn4pyz1PhFEsveXm3Bez1I7uFZcOJOU=;
	b=KVZqOrx8K/qo5h5HtMu2onln1F1vs+dM6/1OWwhuZQWFCQ4wQpEJqfxNaBkWxz0X
	SAGwTNQ0As780VWnyGVf8HO9oAYxTg0dNmFE2HFPd5C9J0dL6oxEmgrUuTgYX7ouJNk
	bEnEL1OGAOIxmUe4YeIsVpP3iV8uRV4j1DtoEmuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182458a11ac-7abb43c0-d9a6-4d95-a455-b2829314dc1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69c52e5892199b10debed971545385d5ac805707d77a6ce280c669a22b7a7df
Date: Thu, 28 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659024052
