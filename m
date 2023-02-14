Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF13C0A3
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AC4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676411225;
	bh=Cht1WHZP43SY6aPDsulaGE6L5YvQJKqf0rI1HszCYdw=;
	h=To:Subject:From:Date:From;
	b=j2RTgvyWR9e2XkEtsqHBrhbZTE3S3F7njCET0FqXXyh16Ix3IFJodaP1QL73G7QAv
	 JOMwr3bd/1pafJ7MPoTkLcGZRXXFfMCKHXX7vWtD0IEP9rC67YNzlIgl2dUul0pW62
	 WRNQo6VJZMMqqtIDtHFSvrhJ22j+GO8SmKVFX+D7CaV6wJGkK8tPP4iviBSvf34cD0
	 IWiMLiDZ+mV54bPiqfaIEg8GJBLKDeuD82jD49qm0K7ytYKq340oeSrLeGVXmzlUbI
	 Mh+bmF5KhvXM8WNdvxg9XcFS8vSiTuD1Z/cXX1vWbOZnhX9yoangCuehlzV+zGyVAi
	 c0wBC56ts7lLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C352CC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641122578.2468.2029180992113477454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b306bcb368dbfe457c70d06b906accea73e03df02d36d88b092b37805feb50f
Date: Tue, 14 Feb 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676411225
