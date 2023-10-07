Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F769CA58
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Qj1T6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D226EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696649228;
	bh=Bz20Kw+qu6nTyla7+wnGzkRbmzQTwvZ6Fu4teTiEsy4=;
	h=To:Subject:From:Date:From;
	b=N/Qj1T6AW3m4Hf59nXmySUD6fZi/EiiQVqWiIBM33K6rV27YhXAfr+bzZ060a9REF
	 pqAnQKcXtlJu8nYdAYovQEq+utFp5+WA5NIyX9f70mXTPGOIs/DAHIZcb/iugnRNwY
	 PzgEohXRNRxZRxFKDhgrF2BJOraeN7/4zOxb68Wg7eu0KGtHkgkuqSMynCh7N3lRyj
	 hhUmu9+D6RoYHcYcV4xSyeZ1znp3wRXLakhpVIJNZN0lqVshoqwTuvFjDzXryXC15G
	 srI5wOusgr6aWxZg+E5rjV7Lepx5zybcpxFo2wzltthUDKyMiCyLcBQ2ohByCLiwAt
	 K5rddOsayivrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55A3E94139
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169664922870.32436.2060380073195786834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61cad39de979f33907b5702ef8b9e7a21b9d13195b85579e213069b648f44c2
Date: Sat, 07 Oct 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696649228
