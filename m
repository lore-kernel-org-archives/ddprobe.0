Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6A7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654075259;
	h=To:Subject:From:Message-Id:Date;
	bh=wRrQeUYQaIWIDMSWGiUbjuIxpr3yDq13VHvGnmDM1gc=;
	b=HNmjWcvWnrnFkcxxPcAe8Kz5/+pDhlC1x2/foLXPgAMl+Mh0dZhUlmLuTcjedt54
	awhSq0ebvQgvH7VKl9nNA6MndXqEPTS1/5ZLMH7cii9BJu+W782JES02RGjbXmdbkDo
	nuQd7UjyyTzZkI9N+M2DYRjBssDP2MrAROaNtEfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654075259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wRrQeUYQaIWIDMSWGiUbjuIxpr3yDq13VHvGnmDM1gc=;
	b=dTsEwh9GI1zmQwhxaQ2o0/yU43bD/6nFrDniyXWgTsoV9HAyhi51cT4VXQWb58PV
	StiptVsPuGoAqO0zGWSzLjwfyzmlxCJNavqZqOufRk1qzdodyigNMhCgG74isK5jEn6
	D/6L/LEKw+B23e/IKLlPMs6eYndmjHnwpeB/480Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e917975-ae37ef85-f546-440e-b1aa-d5f42b3d3413-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edc48f8cd7f6bf56a16b67cc397a6b031209bfe7111dc2e201fc046be0717072
Date: Wed, 1 Jun 2022 09:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654075259
