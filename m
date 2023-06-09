Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8231AEC2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C72C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686299705;
	bh=b/V26Z0jczzdYDR6RB8O/jcCwEhRE0sScM6jUdUgVws=;
	h=To:Subject:From:Date:From;
	b=tC0rxJQUxSu8O2sT2X5Jwpx3pvFKA3Rf7owUyvCWofE+sNfFMYosq5ngVobWcY7wg
	 Lhm+MM+YMeO4uh5LqBrxneDHn08OEfMSmxVa5VP2t05KrBrzNP+xONwReSRCIP6w8s
	 I+N9LUZgcb9PZyzo+kDSRYkEr4SEgWROGdMikoTKBjDhl7mIFIy2gbO39J3Nk64Ahl
	 xiihkeZYJP/28jitASa8KfWHK4XKMcLCZVsJk5gFqnvYI56q96bpYTrnC5VMaWVQCj
	 Mc7cA/Bsji3ILoYKKbG/Q8VK2qBaWtEzr+kg90RhrbGXAixl5VWfYfzAiY+783Fnmi
	 E/3BVYw1JD7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC83C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168629970583.7023.14332064901274777972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43475bcc0e86bf5403d256bd8dd8e1289236c8d061eaf5ba3f77f57a4c63d4d8
Date: Fri, 09 Jun 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686299705
