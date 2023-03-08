Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AA78462
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04208C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678299666;
	bh=IQAP4hGYwqsw6rsaUzc7JJC6hZkUF5lnO3Wg6Wf+z0I=;
	h=To:Subject:From:Date:From;
	b=A51tCXp3gL2PRhsnvrqSrF42M/GCtiddeF+Vl9ayYrF4OJCQJyGO1DZ6o7Jttr1vn
	 OgtsKjSUCyK9EOZsAkdBbPf+Pe2hm/u5GiDh4lehYtnnEc3ukYmAMIIFvShI1iQbTO
	 WetDqg8uf8Wph2VSa1xUBtZzR2zkk/+PzXEnc7ZWkdvWeEYdPfza+zvREmLmYy5mWE
	 ILTrojjNP8QWsowWhWcx9n0OeVjG1MITYFGe+fBo5vnAiwKDDu+freDWDvUtHwtUOi
	 VJq3dZibVEZvPTOLMUmZdBtGg0Y/7iOqIMBZkpEUlSIpOCwqKKDx+UF/zeEj38EBl7
	 tgPU9vZurIykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED05C74A44
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167829966590.25904.11445222511357377336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed123e1b02f49edfca0dc9ffb04285f4839774b555480b3847292fafbb8ae0d
Date: Wed, 08 Mar 2023 18:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678299665
