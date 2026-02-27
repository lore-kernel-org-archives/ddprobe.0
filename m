Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174F8356A3E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772213094; cv=none; b=Ayt+v7qB92+K5caLf/FFqIj2DS8RZ19LN7rEz+/0wzXKpEUtcf9npqLfembEgy5lh25fiDYhDC7z/15YXBFUKMPirHCXKJCb5qY5U+2PPmkblO8593VLi7YHMVD7alEqAUrQob3oUZqWZCNnHIWIxQYiDf5sEN6YLXZO8O0WlnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772213094; c=relaxed/simple;
	bh=z0pJ0UohkSBQ3daQDVXUSSikjqFWSlqYMkbWMtdRvZw=;
	h=To:Subject:From:Message-Id:Date; b=t2yPKWIZP9kFcqimKpajoVjZ2BB4BYrkOm0nMd1Y3wpFXu+ZPC0+ctECD1dQUxBe++21Es3FOatpIzDosg2L8SwjUj6l9fQ4X0IkPXCT77Nz7/F/gaurlB7qfC8Ja48JqVVONEg9XnisBWMnVEMGK61kD/dGgAyq4KLN4wTiGmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwZoYrCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwZoYrCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA31C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772213093;
	bh=z0pJ0UohkSBQ3daQDVXUSSikjqFWSlqYMkbWMtdRvZw=;
	h=To:Subject:From:Date:From;
	b=TwZoYrCEqdqZJXdgXRrpKWiat/eK+3lJMm9WB1NjEXozgh0s9DZcMbrC6xwC26dxE
	 XOeU9T36AXLnpeJNDaLg5/z2FINKUe1kqYuyLRN84oEtQl4gOmyfW6MNEfD21sTG67
	 YATJ35gLMNlV880rJyxU666GKKz/NsHyU9aHkMDLlrkAPiWyVS/cLfXOS2SiAItwfm
	 gldqZpq4oPEmDBX6/3qhzlvVw4sS8Y6oa4wdwywkeqEQbHx7EhnlwiSlle6ecZtDEf
	 tqJDqV1eEkd+UkoD+yQQ3bGZE5Q5UeXYuPLnLARQVMnHhARddwHSFFOnEfwQmuPPEF
	 NoJReozSsv+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F842FEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221309357.9314.13375303934207076749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644d41ce530356d2651fc5d3335050a1bea418f34b533d4af372538310cb3e15
Date: Fri, 27 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772213093
