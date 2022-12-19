Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C463310EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A28C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671441087;
	bh=7c7L/iK7EROmGbak20mAZ91gkhxXzmUQAXGHK7CGt5A=;
	h=To:Subject:From:Date:From;
	b=i0F5kUrGMwiBsd08N4GlKztZvzdUkGtIw7hW5R9Bt+HssEabKHSlbbhuUY2wxt4iX
	 ESg+4yBzKftd78UMs88VPLePnYCrZ0bti8huFJlbZJR/oZvelHlaAajRc/I6GXXsGx
	 bmIE5i/rXrKklhnFfLErCTbtHH1+asuU3pdcQ/M9gVWUMYktqOqX+sAt3rYY3jAhe7
	 Dijvb+U2GUCatk2ieALCpKLABAo/ExxoXDMTwjYnCtsi2pqzVrJplWSHZ/tZa4+hIV
	 6EnV+OCHghHDr98zHnv3KdK1ijDk/EdKm0KujX8whV1gVE92YzE+uN1XGd4C0jtqMK
	 7huCi8lVdnoIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1BCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144108738.9826.7450785043726008235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0c47e676503db21fff1566ce3015fa39be15e245728fa664407cc73e3748d7
Date: Mon, 19 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671441087
