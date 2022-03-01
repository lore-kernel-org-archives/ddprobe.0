Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8527E7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646178984;
	h=To:Subject:From:Message-Id:Date;
	bh=pR03ph/tgxIrSb/CLntpkqGWvRnrO4gYN06mxselqcc=;
	b=Lrm11TjZJtFHbOAXoatS1GuqZN/vJALgLzhj2eDHMu0hJmCF5wPfiEpApYRd2Vwe
	8fWHZmtxGjbxe6i5vYSql7Y9bmDGPcbg3JEpOw/zvBxaYrqorwVKy5aKP81kpv2JuC9
	WEZr5+FTd/IJQ2e5dUyQvpC2S9JR9R5JONZXn5BQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646178984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pR03ph/tgxIrSb/CLntpkqGWvRnrO4gYN06mxselqcc=;
	b=XvtSKFWidgOkHhhDRGQfCiuPqY36ozLznZT0sZ7GiETDzLdaWPz5nPC+mjB7cvmK
	9ZCSdIHevQmP10AaZ1cKvdfdtfov2/96+di9qbMOXBbsPGeGONJOcg8TH8x6crlBujJ
	f+bVXD/GYbaotLLuHOVvNdN/JEWyY+6JkquDgYMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f47e9e363-9ca90e66-47c5-4c4c-8080-50f7d9122ff6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 133f3c710a5a5a1fc86fd96f987255c3656366a32a0b5a6caa8d99580ddbbddb
Date: Tue, 1 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646178984
