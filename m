Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED7B611A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7uoRL5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F033C43390
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704757096;
	bh=S5tEab/sZBnS3QuEZYxJquUacUIC6FBoxqKuhv9rhHY=;
	h=To:Subject:From:Date:From;
	b=B7uoRL5q4ROXIXwoATQTlqk/I1tjvaZn8PFoSpRDh8F5ohWtI7Q9joo96YOTlvBh5
	 TXsw9mT/5/Yhb8vhuKbwIThgkLm0NSC6pntclnitedCVn/RQ0xXHR5DTC1l6OboItM
	 ym3FH9ZyhfjaWk4U3YE5cBGwYMag5YF+lVeGf5jlwzeltqztqO5n1mVpmL2My0jMWK
	 MIx4cs+65K3pCE6lYm9AcifiGEcgHTb+Ckmy54ThXaOSN6xrrbY7/tTZLn84Wx26Yy
	 Dpin8cjvWgLD4Jfro7jlt34jdbJPEVezDREzu8CT4jClOh7XKh2O2aVYkQO3jV9SEf
	 d3F4L020uBFvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8BAC4707B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170475709643.15697.12505699477326054442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc519505a9a683900c2f5c8468553008b0adef8be1fd358136aec98dafbbaa9
Date: Mon, 08 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704757096
