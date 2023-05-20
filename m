Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEC033EE
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 17:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12CDAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 17:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684603146;
	bh=/rHozsD9huyrRS4mPJJjWpz8N5H+sDHFa8WHNr8hkYM=;
	h=To:Subject:From:Date:From;
	b=hcHw3QaUVd5HFygRMXuVSG1f9a+sSgBJpA2eSou0PdI6hEQxhh3a+qs9giw6Sk+z5
	 Z4cru7NxUvLxvSUKzF+iq20lLJnwdgvMZw5hjfsYAGZA9KctCc8dw6Dv5SwPRgApHI
	 /ipyND0yiPLsMlWYhQv1aGJNGMj7vKuR6jfR8KC4mU+eekQ9W4x/Hl+al0aisElXig
	 3eluargfKT9ZXBNkwo8xiUL3rfGozcFsFFdA2KciuRITTpQkLVQ3ytM3mufrFidOXm
	 3oFtycByhJikcIYOsokUTfr7f2gqfO3tpZj4UJWg99egUdbVDAKsdMa3ko8whH3pXC
	 f3O8PT7V9OXhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAFC7C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 17:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460314591.23451.2978796261742502271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2369aaef382b0441ac5a917fed29d568d7d962dbe804736a22082367b9e80825
Date: Sat, 20 May 2023 17:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684603145
