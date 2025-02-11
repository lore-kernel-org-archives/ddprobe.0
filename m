Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E2F1E883E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739255995; cv=none; b=XjK9Z6I1wUAZspDG2RoqAJqz8fWM3giBZ0RZuVz5hWU5LZZ0cja7Lhzqx/rX//VbzuJ4gphi8DMSallBSVlk//9QimO/Sw17Cg5tHpGvZYVT4ddgBpEiG5F7yjuqAgWQysfBCTMz7zLp/ictZimUj4gns9h2UP9y3MXRgEe+z30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739255995; c=relaxed/simple;
	bh=uPf3T5dZxLvVAdFMZb8CrfC3OqiyCT/9CmG3bJIVsmM=;
	h=To:Subject:From:Message-Id:Date; b=rfHJ/19zD9h0B+Td6PcwCSPqYFaNE1djHI22ZdvDT+k+tPonjylNujZALwUQ9PlK09HMv6FytU0Ho3yNnHQgxhUIQcuH+QRLmcQXcys0Z2NdUoQopaYzeDRqFWNYyCKGDBPhjHnN/s6mL0wTo/Hs8ErLzYl+HaA0/Ut6SIC7ZHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBUZuaQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBUZuaQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7652DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739255994;
	bh=uPf3T5dZxLvVAdFMZb8CrfC3OqiyCT/9CmG3bJIVsmM=;
	h=To:Subject:From:Date:From;
	b=HBUZuaQ5AbUD608afEKRQfV0nQ1b41RLFKs9XI+a+KekkzrAbwlHRzzxMXgJ7LGkE
	 kEk/6GSJr9ZjjkZ+7QJRQRxeobfjr3xgwBXvTAAwjXUra2Pndr/SyvNcUJE2ymAuVG
	 /GY0xQV/TibCR5smhc5U5xpdovHAE7DuPF1IH/eyasteGjegXgl4fxz/lP2fC1YCo2
	 vapC4/3uaFPs4qwcx2pol4D0Zfvrq6cxI0XxWQfzPvDGP+fd8/q1SnMBKAl0LxMg2q
	 HB+X/+lMpiEG641r0nF4UHV5IZIF+GoW/GOaxik23jv0Y0Eg+tATZ0VuYjQKtDHcEw
	 DOonc3f+/68cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22543C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:39:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925599408.18919.13674542198511238789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a9667d9c2e29d20e08199d359950bd9a0e6de990999f360d874a2e3065a63f
Date: Tue, 11 Feb 2025 06:39:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739255994
