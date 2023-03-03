Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578268F6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057DAC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677887226;
	bh=Va+4iunmbynH1qR4B4kXjxK9RhP+o07XlFnSWtlZrBE=;
	h=To:Subject:From:Date:From;
	b=Asocr7eRDYGaSE7uVnCHYbX3NBc5l8Q8+nDYOjn13ETbpU+YwvGEHo8bmyILMgD37
	 pTvDnd6chQfXiLm32lodtR9jAWUHx0OamPvuyHcYQ+G6u+8vzRwWKvMlTxJGkVEOBG
	 9AxmQWp6ccMpunKPxVAtBg9eBT1QnBtontcyXArQIrUqYAQiRlMaZu9igxuqO2rS4E
	 ngmAdKf46I5xnqJZryZ+vETw9r2UNCWUfUrN3Mnyvcd2/DoZtjocU0deB3EqGhvDim
	 gFJz5o3jHJTOTvoCunlaN84dbD0s1e629qIAmA0Ck9V7k+GWzEsmIW90AVq34QJMkt
	 l3JW2stqJ9Ixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9375C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788722585.13429.13857286189535552576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17525bf6c54d8e1b4643ca47ddc20b2e91d15716bbc3795c8e3b0ca74df510b
Date: Fri, 03 Mar 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677887225
