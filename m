Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72FFEC5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B64FC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672913487;
	bh=7xqkX6VomsVurNuUb+IUqjrIXb7eIJV9e6PnbVBVgT4=;
	h=To:Subject:From:Date:From;
	b=lUgES2Wa4jnCbiJ6v70S/ftko59zImgRlTBiciK3He8cteb/95xWhAQMW3PEGnt2W
	 Z13kUEc2Oh+QzCJ/4GAISdNVIJvuuxHH01kjTc0YdnmSz1qbKY1w4cfPpN/X6BlWup
	 t+qXP+gVdSqHwwp8n9IHRfj+sKqneuIm15iPF5AcJShtBEpYfYvJ73/xsWmDk8Mnsa
	 FlWxgvZb0Q+Hn2H44UcrCcrEptTSDhamlRTA2j3mfK0LDXnB2k5GpTePH/oqQzJ4pZ
	 YzpHWyLHFoh3fPORDJpkjB/ArnCZG0NWJAMLXV90MdSjUgiHemOXaboR4sXp0oYEz9
	 K9N6uHTFhVEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD59C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291348738.21422.3827749151681523107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b71235be8d6a93009031d5e62636690257fd16a5f9ddb0e0350b599bb19cbe
Date: Thu, 05 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672913487
