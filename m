Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57AD7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C91C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670055054;
	bh=9FZ6ffY8fO9jtsg42/oQlFRR8QORYx/IIHTW0Xg3W/0=;
	h=To:Subject:From:Date:From;
	b=EPIevB0aE0/k3KLxE75XMELt21iSXZJrFXCSmMo+T2mfIs02ALxh7sm4z6MgSTVtB
	 myraldJCjJdHjKqelvZ2a8Qnm/UicF2i5FDhRqs9qf6VeKITe7/QlaUmFvhCcM3CSG
	 jn/Z2vSqwkkMfS3hH8NETlCjCBa82nWIXQmQrQOgApOALBsljJBT39yLu/4vfSGgyl
	 Hb2w55UbmiL+U0AGUXjLe7+YCZNlDFBXZYdFxQo/9v3mqRNfjRVdcSN8pWw+cY1L4v
	 9awWf6njUoLuucnf7PxNbzZGUMgkjhor9QbY9qcGb7GLWV3IOF34s8+IhM5ZQ8ujQe
	 U+UEosyDcgh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE42C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005505434.25839.5489987568581642365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5770a2d8b6e05bc9568087e22937e877cce29313b1e75970810af7ad6d0dc0a4
Date: Sat, 03 Dec 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670055054
