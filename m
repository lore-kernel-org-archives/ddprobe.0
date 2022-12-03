Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64882F56
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6914BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670084454;
	bh=OSNSQuWFGgqIt997w8A+NPLhEYGUseV9w9dBve9vobA=;
	h=To:Subject:From:Date:From;
	b=KG81RHNnZbKhQmBM+mOsUP4pHMVYDPidzYhQ4AY2s8lyr77FHAlFPVuREbvoLKxYf
	 HJxawMFdYnNfEYvNOFW9PS2BkZKO117P7MIrsGuoNMOKWgdyJgs2/G6CqnDFgW1SOP
	 6/vhDiS2yxJ5/ebaJj+7jq0K44qj3yZH+5AQl8YsMa8/cuN6LdKNxpRpOTGlEzMEw3
	 WZT6UPG6GyartjIsffHNRLlWHqC8keZ3KVnCFMz1a/2RHeiU/0hNkFELPXUNSu86Ax
	 QPR2L+OeN9r2HbNXXBkzxoFAQU+Qwm6sRtihcxPf2CFzE8L/VDEusM+s1F+eBaQ7fw
	 f4ysF3/X1fVzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA18C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008445432.22867.6595541751489356386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fe0bccf14a0ab939a196acb4d9036031662778b82621813ba5302ef9ef1600
Date: Sat, 03 Dec 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670084454
