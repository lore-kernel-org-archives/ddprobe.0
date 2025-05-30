Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECEF18D63A
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748626794; cv=none; b=iZLYiOoRqyt9hdOyYGxHVv3SgRk3NCQFpVrqIdr7a9JXJvp09+EnscUM3j5hvYJ1lCtDKYNpwNAL5M3Q8b2yu7Hy145SAiSt+zgLaRoQUtMv3uJPC3DvZKqs6u1QKMcLOwG+jwfu87QD6cRYHZkfR3N8cc6feQaBTv/A+9TY0us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748626794; c=relaxed/simple;
	bh=L22rDl8SUpFq5imNu1PRGZDmhtA4QUP0qnrClz46mEI=;
	h=To:Subject:From:Message-Id:Date; b=Gd6IAJBWbGPV8J2JbP3Qi0hCCcnZad+SOoAjozhPoC3U9SWjxxvZPTdqUu+ZhhuybNmJeeJlfaHO6+SlUg76tgkYTFameVCV2Mfyy4XKL7zHyY8CXgpP/iX75mCn+ehkTVUPAEEspqy+akrYZovAWhnHJWryJE0+y/yJtmyTCgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv4ctGkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv4ctGkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D77C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748626793;
	bh=L22rDl8SUpFq5imNu1PRGZDmhtA4QUP0qnrClz46mEI=;
	h=To:Subject:From:Date:From;
	b=Lv4ctGkWh9bT+n0ZN0gT0CE/e/G0F8wvjtjIVdYJGOBjT8TxZ1ZNdEu5ZJpwo3B6i
	 SabAjNl6982vjmU758WNgFHKCN+//GwLKe+/YRHSU4Bc+IMOYoTwXqZ+97zU6QO1OJ
	 3ndStQJID+Lzh2hinEdvhVepUda0WBAYqWo33U9Uqy1vUnVGH+m0OeB2GxHm0Vw/60
	 Q0JyzfZw2VLMyHy0UQNC1fZkTWeSWgSmbmrTF+hkF07i+lrIUSv1bz5kX+tnknhLIN
	 ksiFT7Ktd2eh0WSjY81hpqvNQvalFe6vAb7N/PdadBAzs1OHbGcAptxVlBEjsvzXD4
	 izBHYmJuz8ecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCCC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862679358.25482.7466893168999538125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f8ed4cfde683b1b782456475e68542774024dd4ac677e7a65d06b88168a34b
Date: Fri, 30 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748626793
