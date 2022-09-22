Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02652580
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E92DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663837253;
	bh=i7xcbECSkQ7zw+06Rzfhay2YcIe/qluoQJQ8mAIGauo=;
	h=To:Subject:From:Date:From;
	b=tJlSVrvPI7QInSRhvrrfiBdLE6XMIYqQhS/8aujU18BZC5EW6+za4CeKenj6MbUyS
	 zayPPwig/D0n5os7w4jNCsCIDqaZi9UWek/jwKCE+Q+xp+232OzNlU9w2RKh+kXJVf
	 u601WEcDvXWlWsnNsWdS3wPUnhyw/n1PORBiinZnYVXm5Lhb/CRh9yo5HEjKKwQLJk
	 KcnJhGUNfZhj+8+OJCCjxiNiWBbzA+K8F5+i3TG4f47hEGZtm1gswFoV/4qVvg3CXn
	 MS/inA+VDXQUQSiRt4yS8p53P12kVNX92nzoKG5c8pmHYFS/86985sEu76owRCWhRB
	 V+PWohon8ZBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56881C6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383725334.2425.16289041721822551600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68425b3864dfeb28ce9e3e77aa9574bc70e2aed443970e7ac3fdd5ddb6c72cbd
Date: Thu, 22 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663837253
