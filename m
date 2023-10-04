Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E5C15CA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 04:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2968C433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 04:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696394768;
	bh=BoSRFhnR6w8CzCw83nl1gZVh4mUR6HCLyHw88KswUxY=;
	h=To:Subject:From:Date:From;
	b=P3YnKSs3BuFC90QDq3NOSMS0gtI1zOUN9/9QwwO4YRdEK2UHfnjQ+fnI+BVlWtlp5
	 krQZlx3awRB+I0BKPUP4wT4V1frtOLwPljJAaozRVWj8qm+mYjnMRhY/x74AEitPeo
	 5GpLqJ2WlwOgaU+5UhdgNyVjkVJYp8aeciMpqq+7VlaYdePhgfBoFQvNq9u3gXMaNj
	 QCIMPrVWw7dcOJYBnxse72vsosdeOUV8/kh2WcW4+tRRJdn7a1chtf09UvVhAkOksa
	 kPJ7eO/YJxwF550hQaUkEqhfIRTtDLzetbNhrnsV0G7vF0BUZ34as2Uh8DMOjEjbhE
	 pM0LLEJVd/wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF2E8FDCA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 04:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169639476871.31415.3914957102165979085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c106d34d87e16c93159e9270cd3aa8ec040d5e16dec20400c885084c2ab0df6
Date: Wed, 04 Oct 2023 04:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696394768
