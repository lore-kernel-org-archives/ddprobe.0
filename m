Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69C3351C25
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786287034; cv=none; b=ixa9WytqCGZipAbhEwpGrWI+q2d7JYuBi35pWVXzVjIE4qQnGXrT5EV+8uwBmC1MpsIaEry7Tu+58jLGKQ7L04pN33ntyH30PtGWSN6P9aqF8uQ3xSoKXjiZ8dzihzhDi1Th7EKmP3zOr4DqW6//Q81NqCz/ETl2bjKrgER3jjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786287034; c=relaxed/simple;
	bh=QTIE6A2V76mRxK9fVDnUPwN49glLkRjhXD0vFHGabZo=;
	h=To:Subject:From:Message-Id:Date; b=cnFwEtjkUtvjFRBVxFto4tKHn8bj8428i5Zgzr+L7G2k9pjSeIi1gDyzGgeN6U1kuY3Lx9kdE8AC2wU3FUbPEJ5RmYRMyRVihufhuTm/M7BqFJOgs0NyEtcEoM7p0T92lqJ2mMQELjRn8vJ1LrhtJ9NSVL4/dcy61BSFZxJqGGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLphq1Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLphq1Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48D8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786287033;
	bh=QTIE6A2V76mRxK9fVDnUPwN49glLkRjhXD0vFHGabZo=;
	h=To:Subject:From:Date:From;
	b=RLphq1XtvcqOfM7UKf+jxZad6wRT5KPEboe8l21gKoCMJyj5yhOGA4jqzVoWa7QjD
	 XnxAw0sAp+UqeYPeLy5tMpXn7Ks1bZhQWTkhARs32EHVw58tmx9pt62H8RN4JOjJx6
	 ICv9TgIPqgGo+4UJF82YESINdrin85EI7Wvzb1KzuxJ8rrEQQMImFwcEJws/H3grJe
	 fObxPItT61Fzyjek+xuWVu6ecs+Z2r4SRqW3K+uVynGp9i7+IEBuRhQ8XXnVSRBU0K
	 DUzJxpd9hqj4QMsKEBoyGJXsFYhr5Xkxjz33+COSe8R+pOadgmCx76A/MdkM0Wsvdv
	 PTYqkSVLsxLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCF5C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628703374.9406.2629889216786102462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5119d4e9a6796ae0aa65c667916270387ea2d247b78cfcceca216646b9c71c8e
Date: Sun, 09 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786287033
