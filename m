Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFF663DC
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA12C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690974728;
	bh=s3IM7bIIlWK5VjwCL4uVstyjfdpRUWXPbNSWJUgQKpM=;
	h=To:Subject:From:Date:From;
	b=TcX4ZSXlFJHTiEz4I75oR45ZDjjGan+jJHKcvMS6xUFcut3a3dwGM9U/dUqaZxscV
	 1nZ8CsZ7UeL/3dBMU6HvfP7pcHYNPmQFTOblXhLSlDRvoPlGzvZvveuhC6bT378Wy8
	 kvtKRBykL5SAnLaG5dQqT+LLkzkMH0abrNH2z/CcjJRHXF2tkJHzT6z6TzXFpuUmTH
	 vJOtyF7SslBogbzp/dQoBOasHD7yfXKDfJv1bRtYMbcjIy0s1SxUnSlLQjVNxBtfss
	 C2P5+x8CjjRpZM776uH5q0QaVywgmMjoCh9Tcj3BDuavG+BSymWkDSHM8TZlcKIEd+
	 H2DVPcLIYvoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A555EC001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097472867.14349.2841066331905819924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3548784d14f8a4a61e0621111816bf608f8b8af01c13fd857069ccc29b7a82a
Date: Wed, 02 Aug 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690974728
