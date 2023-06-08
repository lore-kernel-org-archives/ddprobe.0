Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F092168A9
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8713C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686239585;
	bh=+Q4NwAgdeH4s54miw+LIliyUQpyYaIYPiBvzmTHpnOo=;
	h=To:Subject:From:Date:From;
	b=MADJtql+O4tyRkaEpLYJaRiFpsPCe70/fBT1o6IYAC2zDlq0tkHaHMOSdU8YpP3ID
	 Ld2yawzHwt5KBSNbag/c+ZIkAS9nfqB5hVde98PNHaRv4znopN2Q0pDR5DqezgCMUR
	 XLjP8UNcjAvnwc47Lb1jos4S5EL/EwiWVyf9YFVNRK4mcwOodpzbfhlD+aaGkB5oij
	 3XptWlw+ol4VaWlOheES1PTy7UTbgS+OmAA32Ko6+WaTGDs75e1yHpyAAVFlEd9G3E
	 cO5qEO61Wpjjdl3WWnvvSSXwEuPE0dHEHuGI4Dv06sNFeMnUvgJ6glsfa8Ld/UBZzO
	 SCo3PJNjQCFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3BEC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168623958577.31786.7906448810757518527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d95288325ea0752d1423aeb6867ac6d68c94105b95cb876eb1740b14c2ad91
Date: Thu, 08 Jun 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686239585
