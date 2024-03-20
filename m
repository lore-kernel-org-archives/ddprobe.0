Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC72F1E51F
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710934697; cv=none; b=kyIjgi0U3M+JXk/bDlkH2QX0Jzip0Dtfjxjw64ApOPpXbyza9vMPALfm/jeIsJSDyYQY8v6Gft5ufJcAVDUU3/Rjvy3DGvCZ9ApvJAN4YKq23cCVrbn9lqrJnjvKVshNxVrY+v9wkNo6b2siGtlfpOSxOGwzAQ4ZjEDSmJFzrlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710934697; c=relaxed/simple;
	bh=g5eblA+WCJwpTW3JWzpAaUCyEKKeEXSa2tflACMPpFw=;
	h=To:Subject:From:Message-Id:Date; b=h9dN1wYb1vxcfBjThQwbKu4FHYse7t2rEXoKqcwli87/S77nqFYxtypzuG6qK3IujMmaC93o6aF4CWVt4bhdJBH1Rfm8TM1vCmAlikfXQHJYL6f53ODS555Sii+ZlTHj04uMwQk8Snyva5rLfogTsv1XAwqE9wmYa74VPEU7TKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzzAMYCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzzAMYCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712D9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710934696;
	bh=g5eblA+WCJwpTW3JWzpAaUCyEKKeEXSa2tflACMPpFw=;
	h=To:Subject:From:Date:From;
	b=uzzAMYCKpyWhK4RnHdnwGFGo/EO/Jh+cSFSK9KGfCgXYSvkJEagk/+mGlVEGZQLmV
	 XzV+yPDNYWWp0vZ0k9Ac7pxAwpyOkuH6k65zcxBSZNweyHLKGqFaDbXj0ucH6E+uQX
	 avBxFMPd2sffkB7MHBFsUb7Egs2CZwDxqmx2rVUG/oCXJkGiDJo9u5lO0kpYNF4CrP
	 GUzE1I5jDtzEaJr8SAHrgL2vy7W+Vm4rQQ2s/DXqidkMFVeB/YItBxmZ75oR7miSnn
	 fh8qfQd51mYjAwTpuGF1TpHicb/6lg73KKx4Q9wfDUas09P3K8Tfl0+bpIvLRnaMaD
	 8SVyelHzRlOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC78C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171093469638.10125.16178629673465809913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9074d97220539dbbf7df40f672357b90a65bee57b9051399164042581b31e00a
Date: Wed, 20 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710934696
