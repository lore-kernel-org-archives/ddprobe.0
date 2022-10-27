Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBCE186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67B70C433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666867854;
	bh=mgA5AZOtyJbDWhoACw7AGvPxUhgtD7ndc+5VpZ4JQIE=;
	h=To:Subject:From:Date:From;
	b=q+93wre+jnBa2ucbhfPzHo1c6AOgXzM49xJ/fAej8db9UZSMvsB4Dn7Ba1nHxIqpx
	 wTTDU6o4zYtljOzKW46Mzfjv1mid4XilBXoNRDSNupuonPTxOyOmpgdoXM0y/vR/rc
	 AMBxDR+rVGtEkaTblBZbWpfftu0bY1fTTKPC78qc+bGq6X5Gar+ofBpKPWr93gw6cX
	 PZDJMZkxBvrECIGEGmcBRKoQUkzX1AVET9i7yCEsrnbSVy3/YBp5qcZH+BDMAQDYNX
	 tnrAlmLR53wjME/a07Y984mTpl9kHX74zMiC3RyeMI1aHsbsviasuopjX24WzZHZjH
	 /h1VIg/NIg3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52523FA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686785432.30622.3561349125295228863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83456aff9a53c4d9325f733fe67843332ccb64659b3f13375e7b93e8f0548606
Date: Thu, 27 Oct 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666867854
