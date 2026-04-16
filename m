Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E1B224AF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776322654; cv=none; b=jK5c5x0a5SHpYZdEyKH/kUlUtBDbLN7nL8Zxbic6+CvH0KxTj3msxwAE+zjn/uib9+jg1ZX83aQROV9DTOc1NFqQMG0wG2ggdqxIts5VjBpvGOA5KadPkyTnT2AjI1zD+N8uL6k1VxlJFRsG7M7RuuFs6auYKmgTulcVSEjn5/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776322654; c=relaxed/simple;
	bh=aKOWj57RUYWlUKuEphC4vpwLy7f38xO7u5p6wENEkPg=;
	h=To:Subject:From:Message-Id:Date; b=EyLGffgXDcXTx7wcSScyZm0LP2AoKOJDeWK9WbbAf1gl15BxIaamXo33O9uw3LmrW0yPmpfRRM5BHvyL2+OJ8eV7Gkth2mYIZXq6TDnXOKsyCxVGiQhxgDqwDH3dPtVh66Ir1f3vgg5O/V3bwmDXytbdeK7TzI2JKV4Ulx8T94c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg7RA0S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg7RA0S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C867AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776322653;
	bh=aKOWj57RUYWlUKuEphC4vpwLy7f38xO7u5p6wENEkPg=;
	h=To:Subject:From:Date:From;
	b=Dg7RA0S1/kVikcd38KClwZC9CashR8pIPI9aqpMU3C39Y96ckgz33eppyvHEhd25G
	 1SA7ufAsT+vKXQ0xbNguVsbcHr8ScB3dQ71GOgrCGKntKhwWVmzd76rBAJsXydx21N
	 hOpeTDGVTNOL9/q71oiNFnNMKE16G9YhmsiE2E5+IQ57Hrfys9X4Fsf1GgEsft44ry
	 Vf4esegcoif+sCHQWvdUfc/eki42hcBKPIdy5K9M7W//qJosvCYwCLKoLX/xzMQg/U
	 9Kuyeulkq1oPAh4/DF6AvO/MM7CPUlM5T9QGO1UNM7eUy9a+q8d9LAfUkDJHh7sYu5
	 egN+CJifscZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E44F88084
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632265373.26161.10076861306438776675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bb8dd908eaf7fc2c214fa76bc48153ce5bf761a277c1e941f8b2368de218c1
Date: Thu, 16 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776322653
