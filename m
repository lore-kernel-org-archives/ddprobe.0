Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2587EB27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C294C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672947087;
	bh=6V8o4j+oDGXF7zVe5TAwMIQowpEzestmPRty2BjwOs8=;
	h=To:Subject:From:Date:From;
	b=YJPeuq9VyASDEdSX2EIJI9XfT+iVSS4nSosHrd4OwzEkC0EV6JTU5xnE5rYGje3vl
	 zJrEzxxuqftDkzbyJSrvaAIpfXhyGWJNa43T9/lzYNLJx6mKauxDcPZ/Y+bmJHjbXs
	 O1b37USeplXszyKgD2EMC0Esr0nQcxOOSLT+xnndPMbfq/+BNiDqrvKK0v2J0VVpyb
	 RVlgQpK/k0FlIQQ0hhDwZ/uJwDHVDMjD9sGHtkBAMmdFr/TMqyw+KjqRsj+8vpC6IU
	 0LkvFXz5HOdWA9Q8TFWP/3ZY1gb33FTU17EMlo6bpvOQZa/Rxll4xRvUbwun2ZoFxQ
	 6eKGfcvYcHYSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A64EC5479D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294708742.6360.8550552660377781083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed922d35e85dc8ed829d8129425ae82d1a64f8d85d084372d6258496665b2e3
Date: Thu, 05 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672947087
