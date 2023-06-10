Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD43BA4E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A207C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686401406;
	bh=x2MfalmRtki6LUesTSoZFj+DbaBzv+Se6xQqmJYepz8=;
	h=To:Subject:From:Date:From;
	b=hDz6Mbqy360kxEdutucDReLRKlZRUa6JRmmcvtb7Ek31ue6pGT5wxJ9M3Jz7uo9RQ
	 4z/GbQfjXvlHbeU7mEIOU7tLirjr+IknFHLwmGjhRUDozI23kcud9jYjmS1K/Nyd4N
	 LEGizF8q2EsgcZYhUSBuCn95BaDT4nQqrueBXyU1C5U+byTbR6Cx5FIh76SMkFa2Wh
	 fJDvUH361hTs/nW/ecGdy8iSMK309BH4g7JFiyiTpOnqPxeHFaeLRqiqZ3qcjjHsn3
	 8L47LoTUeaa+QzZppb87R40jfzRfKcPW4Br9vCe9PLMJsZsQvw191OuZ0faCtKFxxI
	 OZ/rznCJEakZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF0FBC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640140581.32556.16190280924164565811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2ea6389e7b5fcc85b134dcdd76bf44a0eab0195d2a1f33d089414590f3826b
Date: Sat, 10 Jun 2023 12:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686401405
