Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C84137C
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlUNBbxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC76C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702950496;
	bh=5t5fmLMEHYW/o5HeYHmal7VwQzI8vsV3PItkoCJhkgg=;
	h=To:Subject:From:Date:From;
	b=MlUNBbxlQj94BJAjfYWHMGHKm7X6jBDIcpr9ad3jK5yHRgT8CL63/MzG0f2CBeSu3
	 QBPgl8BKgvzrkqN+mricQdFWk1Pgu0fq05PD5P9xLlLfvoxmMSx7lvnQLpYNufNyIe
	 oSalKBMH3DTDJ3ZsfJQjt8b14EDNORy9ZQHq6GnlVxqZSESKIOIS0CT5QNotvy6OgK
	 r5UsRu7rlk9V7+7f0UNDLEEDQtWxKhDkvPZQHzq/0CcPlay4E54fhqA83cwnwbJFFf
	 GQZ1nvS44NA3C3NJeqXvLdxkXquvab3fHhj9llPsgxoxvb7EnDUw+WjWt8T6r3se8a
	 0Nxtf14aZB9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621F1C35274
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170295049638.30699.18243277354299330546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6c6200ac1ae3c5eed64ee654fbd744a7022e0e2dcbe29f517333df1e834b62
Date: Tue, 19 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702950496
