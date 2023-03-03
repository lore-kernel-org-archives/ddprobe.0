Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F411FB3
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7EFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677836765;
	bh=LQrfWYMWYDztdygnJq9d/ob2Q4uOfwmlZ9WgJjjEyvw=;
	h=To:Subject:From:Date:From;
	b=MxRR0ZZZ99hzucM73ZB18XWp4YlJob+Z/tj+VSTqSUmErXckkCLTOnjU9P/a1CVfV
	 BKYkrPEIUZnGRlL/Wcqzmgsvj9IkcfsZ60SujmIGSZTQcnXSo2oa8NcJw8qQP89wJZ
	 74Byiphuinh9P4F/xYfMH2+gO6NntZ3WYfdbEo0/+ZitPoBuin51V8/E8NRZJdx51H
	 c8BjsQobYApS9PeIxKPQ6KkP7udsPyt5CXLuBi7fw6fToxkXrMeX3RaHZJ4LRwjOlF
	 Pwn6X7htim6VAr4b8+2s1jKg0L9w6TxiZu1qaLH1w8Xc7mSdqYH+LOR59frywTO/vV
	 Bm87FIZJndplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C152FC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167783676577.28648.17349802915372426590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c858ae33d4258b1b785f9c8741da321eb02d531aa109191127060fde2cb99ae
Date: Fri, 03 Mar 2023 09:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677836765
