Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BF27C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88DA0C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672650687;
	bh=nCZo/CWn6vP9NzoWWVBX7bmm2Ekp5zHFx41lPYojOPQ=;
	h=To:Subject:From:Date:From;
	b=mNT7Sk7GUPKuirKSS7VV3WWt74mDbsqjV+6g4Il+7oiod8XlGJH1S0B24eN9RzB1J
	 9PjJNyICg0+9mGcOK6awjH58u0vyA+P7HobQEK6rG/Thqd+i8k38dxqcQYSaCpWU0C
	 OEI9KCGrsP/m1uIqlc6MUHgM+akwjfqD+EZZ10H56PNczKddP8ridT2t3xm+mPG3Lz
	 Gmwjta63LD7UShIaQLtfpVjMObx6SmwXfjC9PyjNZhTy+Qv4MZ19QCr+KZz2Sl//b1
	 rOzzNcpTbfGjQoAWz1fon6Isd+fpdSsyfD0N1q+OM8PL3iit2iBVOg23MPGSyxm39B
	 J5GaECJOhBwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D918C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265068743.20945.342072273775789519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c96911416fc8259087d644bee1d2122814f69980d48dbf79e971ac403e7c6d2
Date: Mon, 02 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672650687
