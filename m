Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE28191F91
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775523334; cv=none; b=Zhe+b1loCxr5MmxjbW4PL4V8ngOElNweGJA8SQbLQ5UWi5kuhHRXwW4QJGaQKOrEElWeneub1qucFOiRC+6HnmhurZTbKgbo/uanx2Wp+XTDRVxDjHRxTuHUFSpzzwtovox24lzkIp33gVlZKrFacdDk5TlNhJyYZNMYnw5H/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775523334; c=relaxed/simple;
	bh=Q811YXnZ3PjOhvPT/lZR3/LufA0tbe91BgZ2HqofUWo=;
	h=To:Subject:From:Message-Id:Date; b=iVSq0O3ZWPBiMdjwpyYa6JpuYW0AWIYZg9VBF0Px5T5U9xDCgaa18knC1SmtMhVQFsAhcSyx8A4C+sFGnUHjbKTKsrj42PmyMOvUcgcf/T/gE5Z32g0ahrvnwXIBkzvyJUVn/8woi1ciQCPepBnHtHPm6lMEgM0Insi7OfPnvqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bw3LVBUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bw3LVBUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4881C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775523333;
	bh=Q811YXnZ3PjOhvPT/lZR3/LufA0tbe91BgZ2HqofUWo=;
	h=To:Subject:From:Date:From;
	b=Bw3LVBUFXWNqFzTfm4HkQLUS7rjkKJXhDzkGk2sVq3tuR49h0EiNSiXVF8de+dFVr
	 huKF9jejurhOf++9ViMo4aUNYSE5IpWuOd5PT3Ke6MRxJjy0LjxMsA+GE24ikLSXaQ
	 kXg/F5/CEErLTm+vS/m84GK/xZRmPA4EFqmrDfJdoSjorBwvpHxx53m4OwI2nlWmZU
	 ZhR7FszSLUxiXxxNcnQXlbgp33bJkOLtZUr6jNbFpcfyxTJa3DMKjQO7E+nA6f7e47
	 cwcW9Vqr0vHFUuTGJaujiUA4uZVv1LHQ1A1j9AcyZLXibHmO7tViUx7axC1QJMwPGE
	 6VI9XSsq2ztwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD64FB5178
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552333371.8168.4517665089341909465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9759c8cfcd7dc6369678b41d99aec5930612159655498634c2eeb46a0921f705
Date: Tue, 07 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775523333
