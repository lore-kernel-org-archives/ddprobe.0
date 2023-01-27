Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA6323A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD15C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674806585;
	bh=PWpf01Jiqh3HnscYheU3qGFmqXsWE40P7AvJIXGF4JE=;
	h=To:Subject:From:Date:From;
	b=HvTFv0/M6kP6rfdl+TMzQh4huJx2XllmwlipJZzOzmKChyZ0IHSoywMhbK3oQ2ak1
	 TiQ9NRR/okSFZisugMjgg42HMvzx+HfWS9xNvwgVtgddnxAtElZjH46R1CiIyx7XTh
	 UFHqQhpp13VqBlV/CY8yacIM5PLaHM+wQw174fqYO+3bUepc3calka9VXIAJrDvLTA
	 t6uql9uCCfZ3U4oXl4EyugOd35D5JqEBy7xv2bGvM9uS2bHiMyc1IGA9HHFp7IKQUe
	 R5RhHZiQUV+0nq+NBsBrKou9eELC1YbX52rNymbt0JuoIE1KaKrhPhE0zKwceHMc25
	 UGGQLwQKEnNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF301C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 08:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480658577.13273.16526590493991156102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368288b4cc8af5b48e4a4166f4a7ea15a4e94e08019cd53661eb71dcf5ec06f3
Date: Fri, 27 Jan 2023 08:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674806585
