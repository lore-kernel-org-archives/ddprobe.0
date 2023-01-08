Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFE7256A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A61AC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673197287;
	bh=5Nk5eEeoFfQMJc6MJYklZt8GmxpVSFpEMEd47SXUjh8=;
	h=To:Subject:From:Date:From;
	b=OHdO0HOmWNiPicxfR212+wUDZP0VKjerXjvxGPlkETOz7TQcbGQOX02lAg5OSWtbF
	 P6QXIzC4ZA7EW3iYeFAz1BBkEb2Lp1dqTA272X0TngEkUkuYWkb71HCRAm8qXdPKX4
	 dRLa5szDrMMo3LPb2uDMnRJ+QEWfxcmnbmU0Hyek73rxN8ysN1HPs9Xs8NCQgwDXwE
	 BlTclyo4EyC9xHyOK6oemUO8oA4sgAt4U+yjXLEEas/DoHGuB//1WJE9Z/by5NfN9c
	 K/HpOq56px02ni3CtaCyzmfDeG00Hl3cLP/CZ6/G603ns+OgnigTwncmlSu2YuNiso
	 7SaIMee/oTQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D799C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167319728743.24344.896019502226066640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c945d0e1bfa37ca90f5a96158544adf2f37968b62019ea1830dbe1088c18c5
Date: Sun, 08 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673197287
