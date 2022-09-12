Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8EA22914
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4F8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662986453;
	bh=DWJQUV+x8BNkXZkSm559DTWJAAoKjrXIZUr/nmNeatk=;
	h=To:Subject:From:Date:From;
	b=gMkdKzKPyiOgm8NOtlDJpjA0yUWMIy3tv4k52HIs7pt3+whQ7EbMpbp1cB0OC0AcN
	 q8gqS6FLxUDZF/mL9ziAC80wja0Ij/80xf0l2B0d72t879Hj3d1iHwz52J2iuNV0QU
	 61PRHdSkpeN5d48K+wSDn1AUqw04BfBXh3B7nrab3V2+XIVJD6W9Ig8hyHFCKW9PSX
	 mgy2hqpsScO927Oe/SmmwgIjGkkyt51ab0kVZpLQVfEY1V3hJloeH6M7SotxNhZDfF
	 ETDr5f+yY3WUTpHUqmzw5rbYlgXYZYJM9Ue9wBhzuWyWzXjXWuf/ElNXjxQoftNp5e
	 ufC8P6JkODffw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53262C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298645333.6215.6063051511166766653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5a1bed41b819019dbe37d1012740c19fb7e0577976e09dec0fbb62defd3a9d
Date: Mon, 12 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662986453
