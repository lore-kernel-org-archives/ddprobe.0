Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C176F10FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A74C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665223253;
	bh=yrJGoIk6Dh8Rj6OZQUSnfbpF6K0UYgfNgGFmdGVH2pc=;
	h=To:Subject:From:Date:From;
	b=QpVHsfVNJeNdjDDED2MElyFM9Qyopfe2WQNT1NIxN0LY5YUb7UdFTPoMzR70dO+s+
	 E6u3YyJcwBe2fJ/vgACtZiTtsKgWlz1I+L9B4KGiDWXNwFZNv2veZxjnQ8ull8lbBk
	 9EV6wB0EjVCvN8dyW7fWD1NfyEIyVUcXG2Qp+FrVsvlGfG2hqvl+Z5sy5tv15YnB3J
	 4dRs1HAiO7EAYWUBMfs0K7pXwo8THXQVdoonnSVZyvbNRKHFT9eKhWsDc7z37scj00
	 s5IWODptjtwIyiqrHs3ng49w77Ug67salWW9CU4+dp+2uzEcoOtdmT40fVlxhtDHvf
	 xz1zLEiq7CVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D22C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522325333.12006.6189204189321122233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d75937656a695393a1cbd1368bd8a583e4a4c53a2615c554c6e3dec5437da0
Date: Sat, 08 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665223253
