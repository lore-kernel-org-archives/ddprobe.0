Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46447808
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A54C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682958606;
	bh=ldHZ3Wikfftt4iqrPAt5bxNXuXcYOKoJufnwxkajImo=;
	h=To:Subject:From:Date:From;
	b=UVNw18Iz2hkKEiAd3NZtPanQAKLH8mr8O8cZw+9hxBUYDcwOZ2bJc3MjqbNlUpv2K
	 o17oXSQUCXxa6oPqgkIZ3U+XcWgU4E9xUv8hh6aDFgqbsBCQ7cR+lQkc6nRBr2UcCW
	 Qoh5GotlWyKbXw36e0tFoMB+s0IffLxdqI6Gdf8qKqUQmAK8+XlY/pZ9om4y8u/YCS
	 q0+gaJq5ZnUGT6m4FjDQ6JxiVNc8Fgt3EELqlzNcWJGBO/dy98jRca2mJL/uqG2l5x
	 1X+cth+WaF0AtIK/6iAhInIyRU4f30H+dYP3c4hmufPt5c0mOnXnDbqW3ZAjWgPCQ0
	 a+wqVZ5lw8Hmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC83C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 16:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168295860588.16208.15685243137539258902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8093111672c2077c70709daaeb97e36d16a1aa0b51b7a57b658f0937084a9b5
Date: Mon, 01 May 2023 16:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682958605
