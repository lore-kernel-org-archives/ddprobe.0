Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34D31CA50
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767957834; cv=none; b=X2N6F4i8P6DdDtfYkYokBDyXrphAzaKDwFguPfTBNaNx66tZImQ5i/VSSXsaEOfZOxBFQIC4szG4fUwlY7euuxuhQPamPHBs5SXWfN3PoyrEsSuUXcQ2Lj7tOr48eu6OL9dUEAGPE19RH5QsM5oAyngq3mpZaV8A4kIlydqJ9cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767957834; c=relaxed/simple;
	bh=RDZF9lE76onWBtNCmB8IRZpJQoeEPWs/5G7aQpeNjtg=;
	h=To:Subject:From:Message-Id:Date; b=mcVb3emUVL1FGoj9Q8TF5vFPR+MDbDie3OGTSSMrwQrXPFGVdhITjqhVDuoi6TV2sv2Y040M9WOeVPWBNOaHavdJOXnFkQi2kU0+AkBHw6MvwV1nj1uoMMVcDpqf9PY9wBIOnikW5PjFi3o5BYd4/T9GF41fXrTe1gqvYSkThsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIo5Vxoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIo5Vxoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B29C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767957833;
	bh=RDZF9lE76onWBtNCmB8IRZpJQoeEPWs/5G7aQpeNjtg=;
	h=To:Subject:From:Date:From;
	b=fIo5Vxoz4jHqlFSI8QrNK8J6ZJeL1YsZDeHas+s7GBDRRVX/W9M55pJ//bMQc1U15
	 83xZSG4iZRK2uqwK1EeML0j6xKZf7n6RY0D4ktuQ2Aaakobv/T0FOcTfoO1hBD/ZMF
	 3JpDEeQK6zI122oSYSjtiK8t5yyRnAjEKcfMJf5AKRlnbojbKSMj4YUu7nrHW9PVej
	 lqx0Z5KgGLkmxL9gpxSKeUAiHI6QpY6iJKV8uUXCfCvcbIbQq8PZJ7kmPmsQh2F3tB
	 hFtyTxZd80UqgGCq4Bg3VjsSRhE2vX+hFdYwj8pgC4blhyy1qq5qQvarW8oFZk6WXa
	 sS8VJKQT9HOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF7D1680B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795783358.6900.9833336901698767127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e35e62258427caec1b965063dd2b5bb91909d465759ab6729fc7a14aec17e40
Date: Fri, 09 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767957833
