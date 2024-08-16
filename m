Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DC320E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723768554; cv=none; b=tG/zC5fX6ZT4LjR/hA2127IK1DynSuBDqOk8Aw38DxS6G0DMmpgS6i3Y+22gYTNkR6NLOsBc4trRS+TW+qUlAAVoPRZmX0lcf3SJaE5hgSpwLt6Kr4hHyPdVjwBQG6UDRZvdTGFYw3L0WJOkxBEwC2b3CzUHOWSPdO9Y1DQnFKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723768554; c=relaxed/simple;
	bh=WKCkQRhHeVGbCMos3gJAzqLy50SLHpq3ANtPwc/Mh8Y=;
	h=To:Subject:From:Message-Id:Date; b=o4itTP7w15wjRYDl717YGq3Vs+UR41rFhWSAT/WXfV+8iP+aLoU6RxZ+VjuYKz4H8NOdFNNgdZ95hFNAqarV98vvByeJs+fkUOTq5mzB5BTbktcbcJQBC0nbZw8U+q5Alf3tUw+LY9BnnSWl/kdHtQmMqmnahhoOGvgCYoW3E48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPHriqLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPHriqLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29FEC32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723768553;
	bh=WKCkQRhHeVGbCMos3gJAzqLy50SLHpq3ANtPwc/Mh8Y=;
	h=To:Subject:From:Date:From;
	b=MPHriqLHqyMC/Q+WDUl0TTbEERpO0scTk0J6OcnmBt3HganTb1qnkY58pVUa63jkM
	 5s3IfheLoeR2+xZkN4FV58p/CmJVzPaBYP49Kln0Dc2HcLRwkjWMlFf7o9+0PbJVRh
	 GYHSr5+AV9exvBQF78r/+bvEpPfSC5wXw3HP6R2aOg7z3cyzINd12zbk2puKlC16TT
	 p8bqBXkNxrMSUpWc7nx/1n/00aAlk71WIZj0af2xl1mjPlVlqUu270cqr/juF+tewT
	 LQqy2riqZrH3PQrYU6FIrGw37DrknLorILPTcvguJ5nydM89Dp5cknPTHBmBkaX6DE
	 qcip/u8Yy3Hgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1663C52D7F
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172376855362.7324.5723667440824564633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cd8e460005bc1244678fab530aa0a1b42dba5bc535c4be14518264634464e9
Date: Fri, 16 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723768553
