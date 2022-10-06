Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB5A7F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D61CC433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665096653;
	bh=OkEbGJgBQJMi1qs7/n1/1Hd5ooqhKZ+bWdjwKEhTxOo=;
	h=To:Subject:From:Date:From;
	b=ZqPXaXBJqv25vVe6Rk/aLlwmP5+6C2vVeO6AJ3/RZGBYqmESeCm0cWE4ZAKc5I6Ra
	 uJfVBrPFEl0dM8dtiniYbMn3VtfFNRSszmMgeHiQnhpbKbOzVny18QbDv2nSLZREt4
	 rtKN7he3TUlLYC5MXycfJ6taXc4UwIizkY3dupdtLcZF5XGOOkdtGh0hTdJ5rBBdOd
	 4dwvuwWyn7LyWyJ01OeTw9RGLM8gr5bughT8wB900pSIsw+x6OuimpZn1P6VYzsXt3
	 UkQaM45ef1zN08m0XSiSIBAAdmVru8SgUBIQoa/wXAPD6bkt8/Rv9Jyqvp+DVlkJyV
	 MLazWSEORyJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53891C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509665333.14559.9690934519988924250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d567b0916e32d26aa32520282083ad0f3690c8d01b7fb4cb102d5a62c6913b
Date: Thu, 06 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665096653
