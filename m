Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325EB20F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE6C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678079225;
	bh=B0nRYMXkRUhC32ncA5teKeQgZVctrBEH71F/45/0n9Q=;
	h=To:Subject:From:Date:From;
	b=Kj0nTzK3yVzM9hU9ATCIDk5s9rOpCwfj6wds2do8B/ZwNRtpLjy7Lz8trsT1mB3hB
	 3z6TrKlEs8yXsuC42LGzxucfrVl497jlypnjEFE6e/TCT1cLuxKTYVOL7JSLq5XomL
	 LpVSm9NkWvMtTYYvAQCcHJWUVQHpIhlIgbPQwq/QqxKklFPKVsWMoz/qHEYMQu+B/w
	 gMAXxRiSEY8Q05bljtw0D2AJV2ecEUpd8EMk/s1i/bINs8hR6w96bFw/6/IZygZUj2
	 hC4sWCpvawbOlPVUsKZNvE/k9ZN5t78wfS8jmkGq9WZOY0nHVlhdo3sydigOTp177a
	 ZppdROxw49nkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA331C61DA3
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167807922575.27638.5950822766886118280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cddc7fa28c556fbd9b74075658dd842eb78effb38420568eaa23711d0b4baaf
Date: Mon, 06 Mar 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678079225
