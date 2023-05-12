Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA07E9
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 03:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09ABAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 03:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683861906;
	bh=ZdeK8ny+M51xcVVJkcHP+wS3FzaJoZRjcyIgcL+CxNk=;
	h=To:Subject:From:Date:From;
	b=QT5CR0aQa/PXW41pW1DMzp+4naGVbubhq6xOKsOz46G9bvDFvS+pLlfCPbmpHFCSy
	 5kXGyXvXdi17i4sH7an3fwiln2ihOYXYz1BFUxcRy5ZkfuNtIIaVMYZmzViEW4FH6Z
	 aSsQNx7aFFgDIesnLSB73yRZp6L2ulWxTwDrbCkGo08J5xhlz04cYJBAgkc7qhBeCL
	 DheK111iFCFLutaE4BZKnRp1LlHTlpVe7PwJJV4bVGgOuGzaGduLHRPh7+++2KSUpl
	 NR+gW799jd8/jDfI2YMEVqpIMyc4MHw05JnOl8VjgUinJiuf4y+dc+m9MrDpUQBTlf
	 /MD5SVkcXrpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE8A9C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 03:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168386190589.8268.1045919488336884261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c72f954483fba35c58ac3a8e816c73a5b3657c251688ff8c64e0c9af9c3811a
Date: Fri, 12 May 2023 03:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683861905
