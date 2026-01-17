Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7884C286419
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768613034; cv=none; b=hnme2Fjx/q6gsONe5fpI3nuYxwWHa74gw6L4+m72Qxn3yBKXaQFP7NLmibkF1T/h+aRuLUWuhW194H2oUAK/sNn4gMI+FuLcVkUpTYFxQMlkq3YVt3hsHhlMRC71PGZoqAnjThiF4e9n2o9RRDpZoEgCq9bSyJWwMznqBEwGmPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768613034; c=relaxed/simple;
	bh=Ty5T6RfpPdqFAA4famhtoWDIoYrXEFceTFQg+Ok1W80=;
	h=To:Subject:From:Message-Id:Date; b=n9B5IW+vT8b0lIp9HefsG9r1nsS/4/ox5tbbK0DV+EHUrq6RuhInVVf2Vk06Ywh5d4Kea4zhKiCgEKO0PPqP4jIvM8Fxdo+oKiNfSp+asAAUy83uxuM+I9/mm5hrm69cpwXk1VkycYmVPXDQK2mxcLkH26VRhNZS0qRUj+mi8BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2MzSnFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2MzSnFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1702C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768613033;
	bh=Ty5T6RfpPdqFAA4famhtoWDIoYrXEFceTFQg+Ok1W80=;
	h=To:Subject:From:Date:From;
	b=K2MzSnFiK2ZIWL39Ur2qxzloFE8HM5U1Enk9G6+grFC8on3xBZbr/cbOqVvji3nWA
	 liX6xt/2pv7COarVavqbkp5E22jEOJiFTPnojPigULzyqVhe7/U2XgxdMFVJmyLGxf
	 Gyj/oB8F1tSk1RdUCRXQHM9wK/h2PYgjFr8Cbe0d2Ze5wCWzb2Icay3maQj+Uo6E2K
	 Bw+8GfTHYwg87BJfo4zeM8Z4z2i+NyDatYU7XG34R/XsnwfVYAyew5r3FqZCIwMxaS
	 nV4sUIEF5KbO9ucHeaiXt6bpVbIQ1BNjioNcGRsMQtdkarCxfwTb8gedJoZbmmkWtN
	 Jx5h4Sf9q56TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90532C9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861303358.3172.8665513570128318265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1582786c2f04041dc60984f723123a4d66ccd0343f32344bbd1370d33bdee42
Date: Sat, 17 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768613033
