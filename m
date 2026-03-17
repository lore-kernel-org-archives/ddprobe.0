Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019193F880C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773774894; cv=none; b=cZIDM7Z7wn5mEWJ1F1dRmFY64AQEANmBUokSfRG9M8o2b2AfhvpDmYE0NOGnaqAndVdTAwGKq0DaWQJBrPHe7xkgnMNM/KPEvPKy/zrbDjdbTCrSnd8RLxTdhBlKVAP9twmMxAG+jISflY8m/goyNUL+gmGaI2FW1755qwYN394=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773774894; c=relaxed/simple;
	bh=e8lSvViBk9may/gXaK5vQClY7kLRLmKxborCUIqnRMo=;
	h=To:Subject:From:Message-Id:Date; b=bNSRFWhLkQvpILEZpb7CG22GjIr8qyE0GZGhNzPB4m5ySNQSkKUd9ur2iKPHAFZE6Sa3mMbggYDnn/6CtX6Cmzg0y2+Mm/+CH26iC3XE/i6QS9Ah6VQ4FWu1vmCgULq7vzl4imTrS5vQqsiVl9JU5WBYSbTMwmmPXCWH07K9sjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaZkexPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaZkexPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF1EC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773774893;
	bh=e8lSvViBk9may/gXaK5vQClY7kLRLmKxborCUIqnRMo=;
	h=To:Subject:From:Date:From;
	b=AaZkexPn34MYc8ewlzcr3Udf3T6RVVhyGRmeycdn3h3w0mB1MqjtKaCZPMjM9ymoW
	 NCSWvRxOfsGgiSBIYIA0SQBTdlLvL4uK6Cst7Anl7leoGJPPBlQ9lKCNvF7yj1XzuA
	 GzZKhkQrwytnNskNKHIK7eSj0xvwqutaEWW+2+iAMVUHnqaH6UDr/ZVQz+ugFueCja
	 Q/lUH/XkheUDnFUNCfa1B2dipzd3L87xNpb7Cwv/szNO5n08hZJ3GGmReaUK2g+F60
	 xyCVbY1242MkR7PQEEt+Ru/Mwrp51TkxAQvY8kY/WSxUT9zGlicsKzAHQPCXc05CM1
	 uCc5KofhOtfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC74FEDA14
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377489358.2869.11278821397774770703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c8c34788589e31f03a82e21959354c2fe0ca89f4e738f72a21e5a00bd9bae9
Date: Tue, 17 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773774893
