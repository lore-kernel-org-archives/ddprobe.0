Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B330D361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647097887;
	h=To:Subject:From:Message-Id:Date;
	bh=+QngBjLGhwNW2tV0tVl6ep4Jncp6k6rrIpA/7MceKnw=;
	b=N1RTC3mi0uGu1IiNijrWP2LiGYmZ2vg1DRp9mRg+HhWAnX1eIJvRvuA/+aDnRFnN
	Hza477Mqrcbfbe1btBko0wncSB2Re4pdbRhRpOZ1n2vLXYNZyhwbC60sdsntfnGozeZ
	2gxGWoKYboI9M32UEpq/IPp5YQTUpnTp41g2UaxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647097887;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+QngBjLGhwNW2tV0tVl6ep4Jncp6k6rrIpA/7MceKnw=;
	b=N6Sxc0ejD2HcKnf5ngR1A3zLR/S4rPVQZgTAmKMOINrzKThb7bG5kkfbyWCS1kg0
	0P8bS9kphwBGo2f/FpaU8ZPa6+QBYJ6YMWzuQR/hrsZOnrdm25QZPOI9NRi9fPdq2A8
	0Lg7S+UcXt7eExRO0ZIEXStNm9dhUiuszSEthjME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7eaf30a5-f56389d7-15e2-4e1f-8d74-d0105433d424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4a742036408eb4b294fd46c03e2f27a52250d03ea55dc05cb6c83e40f85b461
Date: Sat, 12 Mar 2022 15:11:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647097884
