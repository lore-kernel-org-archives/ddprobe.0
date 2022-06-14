Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A9B7A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655220659;
	h=To:Subject:From:Message-Id:Date;
	bh=lRiLkEnGQTssJEX+DtNpzK2MDO2ti0JY30+Mi0Uh0fY=;
	b=Ld7H1S49Ka+bVc9n5wDQIcpmPgVG3y9lvE9tx6dAHH02ky+JlPnVuo8GtptdHqDF
	NNYe3DstfKdfs6qtfBbo6gjGfThwK/GCoeEKE8MDmvKMCFpgZQx90kpdlzRdXouk5JV
	MeBhBGTCYe7t9M8gw0+OfGqEYrDSLbvRdePiFrlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655220659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRiLkEnGQTssJEX+DtNpzK2MDO2ti0JY30+Mi0Uh0fY=;
	b=Rp0eol/Gk9WrO3cAk1EyFhgZk9NBHZTVc8Bw8ty5cGkIUqLxc3aUYs9AkjmqEraQ
	q6GN4xSZRpnWXU+ZzUkc0WeUjINbHDRV6IQzlOJpDsYvqFtthnAqmlF+/oaRa0onbOv
	8qLRIdQ3648RZ82ARK6D37Q3njNRDA4PNmzt8rWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162d6e42d-58d349f2-939a-4a69-803c-7967097acd8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35690fda0f59e35caca225fa8b9abc655cf1be1677c73c42039a12d39f73bc3f
Date: Tue, 14 Jun 2022 15:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655220659
