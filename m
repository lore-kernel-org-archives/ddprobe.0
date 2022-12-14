Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0E128F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CCAC433F2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671007887;
	bh=eMedZ8kg7MaDen+IMWzyoE8Dw6c4ARwv2v6SpG9m4Rs=;
	h=To:Subject:From:Date:From;
	b=gxkJjCRuzvOFbkyCLoJkeFBZuGnWyUwBDUcnI4Y11Z7yGV+MICb7keF1vEw8c7V8Z
	 j3mqWwWSythEyC6r0oT/B9+aVfCZZnRX1pjN1kGly+IiT/eXtaa/IWHlQh1u3RXM9Y
	 YYP7t1sCbXlMARKxS/PFyLv6PnjAbgbsQ7/P7KXckFKOFtqtnLSngGFihrcs7n7FTj
	 IcFqHQvw/8fi5FsXQvSAeg7730thgq5Q1fXDa65zbvCIS3FOQ+7nxJx84IctNqmkeQ
	 FOJ3NSeWFGOjnJBqXxmZt1Or2ZgGvTS0hmdoGb4GQLhQxrhxdn96/XPQ02KA4YLyAO
	 2d2kMG12FPmaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609DAC001B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100788738.28212.17361144046455465480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154886baca8458350996dc8d9243a57c38dc3ac1807ab5c87f7828f8a2137b04
Date: Wed, 14 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671007887
