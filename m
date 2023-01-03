Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE38B7F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D9C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672710687;
	bh=gdV/8lBffH6+3yuPQVQSEhi5sfvXPkPmAlwG1UfYNuA=;
	h=To:Subject:From:Date:From;
	b=ShbazZ89wFzgHzuX62Hl415fXwKxb5z4IQ7NuZJ67jRaLcfDKYAZLSX44hRcFCCNp
	 6VQ8xL+Eb4zQqVskddVDeIvx8BjWSBq90okMKS1cIZZgxbT7NuHiSs+Fq3TZa9VH43
	 vNd/AwWEwsEThuCtIGXqOivbWqiv42RiK6RtTJDcQGzhEyaTzo6SWr98ihyE4Fnh8u
	 C9URPNdsGHdGkb/TB0mOrUuuMjT51xJQ1UQpcQV8GlHWzKFCbUCny1ndFfqLoNkfGK
	 38gNRGVtBX6RiNK2iqXw1y+S79UlNbx6Av7LPawrJGRDfCaU9c4q3WimYkYB+S8/Sz
	 P6enjtKHV2zMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86A70C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271068749.16927.3239106392901717692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7bdb0b24e1936213bf0baa4aa114de7733b81cad7e7d086db2ee21ce226484
Date: Tue, 03 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672710687
