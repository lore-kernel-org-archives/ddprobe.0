Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AE7EC5
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 04:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652762579;
	h=To:Subject:From:Message-Id:Date;
	bh=gJ4Ee5QECkVgXRDKlyUgmoOtfFCsX2GQaF0XDhTJztA=;
	b=VVJaVCAMIptXLWgC4y1ND/nrvRB5VRz0iBjYm0JNFBqG8dX9i91Kt/cwqfM/E9Dk
	bvJchbIjl5l/O8ZN+LNgi7C5gyQAqOxIw8n0aX2sdA10hY8uikfqJibayJH7BHiXmXH
	Afr5udbMAHbAfgGfc81DKlwZd6p7kP30DuMMWv/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652762579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gJ4Ee5QECkVgXRDKlyUgmoOtfFCsX2GQaF0XDhTJztA=;
	b=EF3cXFkFIlsSUgWdZH4txBC7imx9RV0dMlJv+zgi6Cx5UizdprTt5v2gP6E1gHrY
	u4uQSjxphEKX7rXrUgdmHfxfCOE2Zdx2OaGiIcFuJZRc++DT3PVaiGhfM6YwIkT0ttf
	rMkfbwtU4baA1RHvyYy137mQ9Nh/p3SV/lDc5/+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d0539182-fd8606f5-dd5a-48fd-b271-7f5e34dc6a8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9858de2ea717dfb3076ad009c53b5f01ea8605dfbade9e6d89453dd598579ea0
Date: Tue, 17 May 2022 04:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652762579
