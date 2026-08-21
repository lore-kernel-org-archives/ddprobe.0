Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51D936EAAC
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787326835; cv=none; b=pCsRtP4yZVpkBotuH06k4RIzPIWwbxSBKFbfFd/0jNfJr2056XTdpALD3/wtkq9LelXi0daagNFH5OsQXta6Hxhkk1wJcAdguzGDPv373GUV3/8MsEC+2ToDzUqzRD4HVtp3c9/HRbOOCJNU+1+qgIWOrdJ/yz2enKZTNdfeaQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787326835; c=relaxed/simple;
	bh=Bt4XV9R5QFTfJnl+cIy5pfA8H2ox4+Sp3RnW7wEifa4=;
	h=To:Subject:From:Message-Id:Date; b=ER/aMQdMekWNtZEqfjhlsd8Hm0MfBxT/kd4RcjnJaZQzgx6zbuLyQ8bRcrMrWehN9n6pQqb07Z/Ew24JeeHnd6iFg/2jfHqeLV6Mig/eiklD4GKTB/FL9vA5fGMBQc+VE/zKs6ZSuRFooyHLzyVVp4jWdkSgeK1G6qcY7bl5E8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMeXopRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMeXopRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB7BC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787326833;
	bh=Bt4XV9R5QFTfJnl+cIy5pfA8H2ox4+Sp3RnW7wEifa4=;
	h=To:Subject:From:Date:From;
	b=rMeXopRAZhvzE6QmJVj4nMs4c0D4aMe5gAXddGcj9aRaS6Zc5AhGn44vuQ9QPpC2w
	 MqKV6YWNS95xciJL2H7F0vRTjvcy/dCRvF+TFz+O8pH8lQ1snoFAG0Ykbd032aTTa0
	 jksL6GW7qSoVSuVYQuuyjfdKuA9vZ4mZ3Na4Du8OU8qpO/PqipPhCztRtGlf/9wsUP
	 9fR7Yq8isYbwJV92uxc3jN9LcgrujiYzjJSSDRo6Cww4keLX5K73Erqfdqjftb8R3a
	 TD/6uLlBG2eLG9A8eK2pdPLTydmeH4TyROrPEio9Qs+0JiRIi2HdX3HJj6zSlD60j9
	 FVIU1NdDZLN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BCC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732683368.16864.12072895674772557027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91378ab577b5c674112563b947852c3d9ffe780781e1df2def1403c48efa691c
Date: Fri, 21 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787326833
