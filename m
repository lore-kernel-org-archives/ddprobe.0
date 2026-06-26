Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D033DCD97
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782467254; cv=none; b=dfk9cLR2LRwYSRp229LfV7zJbTbTNtIfff8vmA94Gsww5H+cY1/Y0zqym+8OvTPs4ANTXfpp1Vr5Z+8LvBRhmTUTeJ5jt5mpUWFiXPRWEdaZdwowzPw2bEKAD1m7W4uUL86kSUrC1E6SCXB5ys8R/5dXKEqRFHyRu3zOOULiLWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782467254; c=relaxed/simple;
	bh=U7WN6RfSaSKEWdkK9UTsWanvf+licrN+z2vECRjpO5w=;
	h=To:Subject:From:Message-Id:Date; b=KRDAp9wokkA4JawjkfLGgmgNB/OXh6GMg7QSuO+QVX9iuaLYRgwO25KNyXjtv3hkPXUvyY6+RkN3cGZz6aoUOjbPbyYkyqtSUO1WSWU6ZUEEaxtxADvRn9LVqGjMIsHaL2W1tnZe1z9xKd7wr84jIrrr3t26OFvply+JsC/X7nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9yeEWZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9yeEWZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2F2C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782467253;
	bh=U7WN6RfSaSKEWdkK9UTsWanvf+licrN+z2vECRjpO5w=;
	h=To:Subject:From:Date:From;
	b=N9yeEWZkZraWGWVptdbIJ5chg92mr3fdZYOIIcH8ojfcA1tWJ+UAxahPJPK9tIxu7
	 9bIx8qtqb84sVSQx8sPDUCU2tePHwM3rXAx6TzBO6iK9q7Ypy2c87GaZmM9juy2R9Q
	 xbfpn8MGav19cKvnrv75tN/a9iv7Uh48v7j2oPIFnYaHjkVSZ0EQ+gfQSfKmqMt8Yp
	 BJ9ArI3zZr22UhM7c5Eb4kAfFGnob5MmhFFmbt8NS96ofYrQezsEkd61VXeG4D6MAo
	 e+HvphzScZEgKyxWSGzAOcoZwWjacq3ydcwmwdtoC5WyZiUnT42oTZk82uL7Hdp3PY
	 OOyTERcldcz5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85C1CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246725373.6786.14748812159441870662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92061c8d58bd4678f81a60bea8517122ba288cdb728ba067904bd32e3dcab85d
Date: Fri, 26 Jun 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782467253
