Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACB63C23
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7B3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661454652;
	bh=FQcEjCaYeD+kPXN5lkDWrqU3Zi46M/5bEkzfVn5gqJo=;
	h=To:Subject:From:Date:From;
	b=mC7jRMAn6ckoCT6BrqTQ4rXIyaS4qW8EJ/WGkLidu5Y1Vl+nlRoeXJDZ3DN2cKrND
	 gSjCQ4JgI5ryxSzekiIciZU+UCtnvuivg4UhBGl9SRjy7MSci7JweIi19exs0lFxhQ
	 YJAyRggOfGweNgJ/xnceFLKN64exm6c7wd3wc3opBWmJVL5yhZfMucGPbOVHYw1UHG
	 KTu1Bh3pQqs+y616x/3ZwpwoBchu+cODhAL2bo140wm8dL1X+Bo1naUdEoJ4v1CxdS
	 +JA1VdheXlvEVlCbhAc0EfaKYX+SlLDpHPWZW5iMakxJaK9Bvrkwuq9fEE1zvew2DR
	 QEzidqoyEhK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A96ECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145465233.7675.2403661827318081903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f318c07f475378d3ae339a15ea66a7844cab4ec68baaa5877d1a923bcf890e7
Date: Thu, 25 Aug 2022 19:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661454652
