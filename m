Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1E8211C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7316DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661805652;
	bh=QqUWcMk/0TdmHb6SV8w2YVu8JBlQ20zcKO91FxHYigw=;
	h=To:Subject:From:Date:From;
	b=LDocMF61gm/SJfd/PObIoYy0JsOdxYNd6SQfTMUdkDy4DknWre604Vt+dcaleLQ28
	 gcxZdAwO6Isqk0ef3ktrm8r80MBgdn4fwV3SRtNPKjIC6ryQqDuH+zjU5XtBZYf4hA
	 I4lI4TkKk2nry/8yWqP+CX2tGY3Cyfrc9dzlmaEK2Ac+LoY/+lggac+i35mpdzsP8y
	 zAQWB+WIMChzcqY/rJp0S4/n7RfUXN/2uePztmzBPdNYQFAYZvEShXv0eeogXA7kdB
	 WreaDHdfk/wQLVT2zfKQZKbeomG0lZpkuh11MtN34LJqBxYpD8IH4TwCEB1tVCrD7l
	 O2FzcFHeSrKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58613ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180565235.4571.11107410155170215443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13179140a05c58c8699aff98477987e4d98b90804858977d1d55409bd9268509
Date: Mon, 29 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661805652
