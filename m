Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61717B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A88FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666617653;
	bh=1B94pZEd2Mp+Y9IV58u1kogxIVr6I+IYvXJ1WUkyy3A=;
	h=To:Subject:From:Date:From;
	b=ZUI88B/UIjnFGmD7I4J81VsWu8KaJEfeoP03wpVzi7Gif9t2B9XIftBD+9J7+7Fnb
	 4uesKwIZuRMXZzBUWcWUjtxWyol2TAH/IVWBDtf1thvWL9UpNQbu/DA2ArfQot7UtE
	 mWnL+lWsyQqSD8dBb4Bl2UWoSVTnt7sO7HC3chBoyV7lpw7FI9hnIb7leub/1Nya7N
	 Zkml+wyDnYXGGIk4XTM2mWtX9HRK/e8kep4CGM17UZurdFAv4mCZL454tOJuQs4Xoi
	 MC3iqhm5n1K+L8IzRgC9PZVRp4/m0wanpWUoQmOrEI4eS5UCPz/AC/1r0oBlL6zxWu
	 GaeeB8coUJXPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5442DECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661765333.17691.9341561581301168190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cde08715d13454f0731e4a9868b0a7275051b85d4367beef14506cb898c830
Date: Mon, 24 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666617653
