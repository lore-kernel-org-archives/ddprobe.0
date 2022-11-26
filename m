Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E127EEB08
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AACC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669440654;
	bh=1tQMxzEToeHm7BQoZGruy/atGy6q+C+I91bPJZg48pY=;
	h=To:Subject:From:Date:From;
	b=P6V1g77dS79eRJE+y72gyw1cmyNZosRb/L+GbDh9rBQp/CiC1AQnlf9SLBR8UgEb0
	 KQSIHRLbxe1x5pDP8bgcxM+T/dAY7EwqXFZbV4VThmmc4Z0VbywhPLTjjPOWex4Gon
	 de8cN42Vl5o+JeHBwZLn+GkTRo6EAB6mgvHsUcpUWAgmSDtWRixz604IvmNKI7j79U
	 3ZYYAFDp6JJsK/fIUBdJNlglMGfVCspmLIVlh1FnXHvaeeQllNRogu98Gq8Gub/2Mv
	 APqAPdnreaHr3Qrjy32iS26v8l64bUZG87M67fIz8U6KpgbbrOZl/AG5ElNumm5nGb
	 ijPy6swtvTjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57275C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944065433.29354.2218447101165100557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0152d55851538f7f79ca66babadb18aec59e660e705baf24dc1fd993c6bdb68e
Date: Sat, 26 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669440654
