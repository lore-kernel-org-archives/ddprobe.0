Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DCF17EA
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FC8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665628253;
	bh=htUd4YWcLM9SlfNXZV1o/1aWAhXkcrjsryEjS3S99w8=;
	h=To:Subject:From:Date:From;
	b=RxfU7CCpVv4haUdTo9q+uqbkVM7V78Ury2GF1G6BcAnXI4kHBEQriaXv9nnWDgC3V
	 EE3zS4lnodwgezbwa97jtWp7Ybeu2QpHGCb+kftdfTgIRC9+X44WY5JbQjq9ATclLB
	 SCckMlBhzjaRUvHFNpmiYPM7ItOGyTqUbbC6atw43aVwF/xCzXZsdK2VC1BAQFzPFI
	 vITb2+YBbj8hPP+tsmpQsst3bzTZ9AdYgvi1MG9axvElFu2XfPimHoRg57jKcVcCB8
	 B+smNo8eUu3FhubD44OmcLXOlHeTNXdRcDPHUkuQAhrlqZzkAG0AhVorxNsH6zuDp0
	 utnm+2Hu2ehoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADCEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562825336.27031.2525837111378772901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9748d92ab278cc7c095f5cd6f44f2eec912c973500cc9598e05dd8fc9516d4
Date: Thu, 13 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665628253
