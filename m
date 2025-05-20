Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46961E0E00
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747759794; cv=none; b=h0nrtrvRfNnJq8qL1eJMa6YHHvbq3FGJcDnlx+SDstTcRGvJzwc3JWY1oOnpUD93e4KfT/PWhHEoHjSOzK5dSMkv2L1T8waoL6sNoNneRbOuBNJ/hdPiusluJ5LV9oh2Klcg+Sb5C8hoToUsh7KJow/IS364kcJAuGslRx0XW/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747759794; c=relaxed/simple;
	bh=jQt90yW6uCAaX6uwXrjE62e9xi6WO226nehJyNvghqo=;
	h=To:Subject:From:Message-Id:Date; b=gv8nutWa9q5PWzLlKHWeEMrfa7ehk5Q5CKDysYareNasQk185A4p3R7x7GKNmPNlhP1jwoV2AUaEEQh1SnZ/kNw1iipNYaVhcDbZUQVVzP2Y1/lQDwIKbOsOEkCqceLyDuMk8MraO2c5BGBOmaUT3I7t+e/eJTCuBSGo/BkPfhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRfDSfm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRfDSfm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50AEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747759793;
	bh=jQt90yW6uCAaX6uwXrjE62e9xi6WO226nehJyNvghqo=;
	h=To:Subject:From:Date:From;
	b=YRfDSfm6gLQ9Mwrx0QMxHknBZIZSl1v/mq0yoNvRTGMvhQL9LoZkmJkkoqac/p11X
	 WMa2jszXPXqsF9u/r+LGFh9MpqKbLXei4BaFSQCcYoM7fR5mBfjQDYrmVN1eHxuJiY
	 N0kaYRQ271aIuZf6MiH8Ru5Hk6dAGFVTVtdw5tuiVPCr6LkNGJIaF64AUZaXc/y7T/
	 LBvNeVPxoTSlK+P46j8/DR83cF0Jq0skIupghxlFIYc4YdbpxjFZScjykAcLaGGxGr
	 WK4m3wt0yZtWzhdMQ2wcEU8pR0audrIJJ8sYkSVEO8qjIEeGmw1PnPU2ytNHsetrjr
	 2uMpUesvflwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94792C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775979357.19689.9485521128114015352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3366ad2af9823e2281f3ae830a2868283c4535a61a5d7813c6386e51584334e
Date: Tue, 20 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747759793
