Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C38F4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E8C4339B
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678750625;
	bh=TvBy6Ra6XMQhCqNRhbdZ6LlyPxBNtuXy7Fd7OUUWHo0=;
	h=To:Subject:From:Date:From;
	b=jBZADiac+C9Zx4u6WYoteIz8pa1Kg0eoX464WZhXn6eMbE22i6tOIXMuXGX4CHLuJ
	 bryi2mKhup5GUOK4mBqEzCv+bne9q+YMRK+LVVFw4MencYyA94kZz2ikztyoPBpsTh
	 OoX4cYydJjp5QDA6wBeG2eFALKXdEt2bJ/9FeT5I+OwVGIXTG218J3iqb7JtZnCi0W
	 MQAnuJ6yKh9hbRxEv0W8n1yLjGWRPw7nMkN7DqK+8SNEjpRXQlBHjVZ7ZZXQC/yXsh
	 juGbWmRr/x8d4tuUMr3TgJ1JXkCruGg0TZ5SLU2R5dqU115ZENBnw0L+1Re5GTkoiR
	 gwTNPKldsOC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9233C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875062575.29129.7352774539900179784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967736402c1da4d38a837d9d7ace062f1cd00f496b0d6e5fd62aac6d3dec25a2
Date: Mon, 13 Mar 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678750625
