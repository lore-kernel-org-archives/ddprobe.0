Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC03224C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tONbsbPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDDDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699907896;
	bh=WRRf9puOiLer2ItQYwpXWZHQjwKYn4Fh6kvAAimXT64=;
	h=To:Subject:From:Date:From;
	b=tONbsbPG3V8J4jo/ANUfJuXRkKbCLFGHYkxIPoWVpjFgMgQsxrbt++oIstf56Xv91
	 8wt4q+kiGgt22DAReBHetBhVpQXjTo96uG9X4dnLLDT70qiaLgMydRC0MgWgEkH4/Q
	 jGSOUhF/h+dqvjALKucs4wP6SbcAo0TQYvDGVwBCYjlLYpidKD4PLc+6CPluhADVYL
	 ejSLmjBd8Vdg45lLCEp50w/gfhJCppcewG/zEJGk57xeOjthac+Bc9ZS0bd7a+9wx9
	 bsfXf95wAjCBW3UUl6ITY5jOb773zVZfNcsN0PphyeVjxYjDgZz8QJgQI5zU+xcJKW
	 uBv1Nr3sEvBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA78C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990789648.13747.3916638425219069816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea70ab49954de8db9130bbbd4adec437964f8bec468fa4c7dd2fb432a0833e6
Date: Mon, 13 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699907896
