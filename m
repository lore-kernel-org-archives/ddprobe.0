Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8CE2B9CD
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744193994; cv=none; b=RFs2EDdYmVtJqjsZmB09BKpybKXFjCW/tloAh1oL5jYSQTEsC8qbypOiqMkpZbv0Yo6Byg9E5EuprKGDF8f3P0qO30/V57jcjd9WKBVElsTw9Xa8WRTxgkU3TrXUi1CjvtBGZz81SXhlD4aqFIYK/XuBkfbnUrUAw1Scq5QAn4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744193994; c=relaxed/simple;
	bh=zCIKfJGW5W9mN/KH2Lx+0TD+UN+QKDhpwJ3SN3Vbw44=;
	h=To:Subject:From:Message-Id:Date; b=uOqSJncAIQTtzv6Bc5oE412CtHioG2lP8LBbPC7kxNlrSrtAL1q1W/BwrFkx0aRRRJWV371No85HmtHEssb5JOnRdT1bBKkv4sQlY1jxPmr/u60zFstYKWRgLlf/+0aQBGTQmwKiVsHYHpgC18JHIWjELsPXSV7nW+tVnot1Vd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dd/FOUV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dd/FOUV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A662EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744193993;
	bh=zCIKfJGW5W9mN/KH2Lx+0TD+UN+QKDhpwJ3SN3Vbw44=;
	h=To:Subject:From:Date:From;
	b=dd/FOUV0G9iSsUZbTsTttZh8j6CCUqYX8HnAKuJi5DlhlKmfpKXf69SSKgNJ0J6oU
	 b2bgseFKHxFMMqf3oV5uMh7EfYsKI8xa6ErJTUCez24oA8xlu1plD99UGso1K7GYxF
	 cTiiT6qWqc9LxrSOtvoV9fRXBWYaTs7hz7vfGk9oBzLHT+JSDde+PHoK1zLEzWd6pD
	 Lo2xaM0dOJUrsoaqPUCEmL42AwCYHkGyR4pouX8flbGVG3aNx2eiIr0OoJx9mH6yfu
	 5BDm37y1qhiXqkFij5lsmG8l9RcrnQnsfa75JIQotwwae27eb76GxCV0BtQuodawOQ
	 2FplnTpjoMeEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95684C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419399360.22220.15984399286356670934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cb2ba2f32e05234d952631863844c7be3ac024319065eff3eded44da0414f1
Date: Wed, 09 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744193993
