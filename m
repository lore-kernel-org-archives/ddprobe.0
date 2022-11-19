Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC34F36C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77813C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668829254;
	bh=eMFALyfQLL0aQPhuPK1kHSC00Oaudk2Euwgqpu7UWIo=;
	h=To:Subject:From:Date:From;
	b=dIy+UcaaAoYQVY5RHaPO28u1yP/4HoTSC7AqeLtDGpbFyXjT/Emcs1oYtf+GhQZ+m
	 yO9mE+3edQhjRLSEHigY4RIiRNE4SmFDXyOB95TEMsU2X7Eo4tMSfbIipihk4uB1/v
	 cdQi+DVtV7VqgHpuc6sGZwoJW8PYdDkcWqhhwkbapHlLkijqUoQbMxGyUwbJES7hZH
	 iXTrRvd9OP157CPnfPUJdm30gvRR6dUuJ9tcxYk2fIzs69x+/IHzqLdDN5KGIvoE2Q
	 ObKgDc3NNlObhkWka/VBud24gvnSGx2SSLnssmnMs/NX3YjXvUZY08X2HjPh0rkLf/
	 GKReB7coinMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9ECC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882925434.13412.14254617826110705254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca70228040f4dee163fd1b1e88a09970dd33c0ba7443185928ee14e94234505
Date: Sat, 19 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668829254
