Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5387FD310
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0808C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681947906;
	bh=iYPhCxQOooK9aP3lBpGaCl9PXjaiwUDxIWsM5EIoJq0=;
	h=To:Subject:From:Date:From;
	b=pKp4ITsfWbRk6ycbXGAN8Y9FuH9xr8xQf7hXZDQHHJ+MUDFoY4pL52iJmqKyr0Tlo
	 eelnzYNoCo2UAUtk+3c2SIp9q5wivDgpKDNrTiekj7b4f37lcDi10odTZlIVPXyx+s
	 VXQ2Up55sVRLEqYPWPQeP0G4bDl5wIiKb8OhpK//o4Xm7A0hkKEt0HNj08Ogf3ZcrY
	 ibDqBjUW5t+BkgTaFDsRclmx0E+dEpEMpcwRz4MZMDfxQIZ37iwVqy+ixzLaHvO6/t
	 rDUC8vhP8sEaSfCsPRJE+YKUYe19GQ5GjnxGyvJHqWk3P5wi0rbF9rNkR5vuak8k/d
	 Xkf4n3K7Pmk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6704C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168194790579.8658.16395331416480479097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31745d6576f4635f55689b3eb2dd8485000033541138d108f51aa82cdad46485
Date: Wed, 19 Apr 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681947905
