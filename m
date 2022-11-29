Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1993639
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C357C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669702254;
	bh=I47Z6Tf4lztW/bBh6ZjRLDueYC3j0K1EwlCySwUPfJg=;
	h=To:Subject:From:Date:From;
	b=oYEovXTg7mqB4QAow/wM6Pr5z7G31e+JmyfKAHUx5rmZBOovycy8/JrOyH6K71M1L
	 DF/B1mwISqVYRpVRwZLNBzr/4f1vTq+3v58X/ksrsLnUeVJPMcBMJffQOVrpaRzj7k
	 TxYNNakBF1an2Tg1LWbNwQt2i9ow/Te8764CSRM03DcMp0d0ZyuBoT04QG3BuipT9Z
	 S3RwciNFJ40HKnuF6p/uPpqxh1enDl7vcYIDWeZM9cX0/6l/qkS8WdiHmzwB5+ZGXS
	 NHTUVG76BOb/ofGCq9pPkyEQeuGkLwvo3qCiFpsok8hMSt0WwwpGRlGXMN0Dio0d4Y
	 sGROlHDMkHEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FBAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970225432.378.9208880109536527117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea214df7e3d53b3e4b62ddafce9e82dcbd1901a8b29497c0ac32c32460223fe
Date: Tue, 29 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669702254
