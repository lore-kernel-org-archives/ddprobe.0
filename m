Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7B11102
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B6EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688626628;
	bh=yK9+VMfkM/b1rlYOAvnmWE/4P6GxK02Xx7sucj4rnVU=;
	h=To:Subject:From:Date:From;
	b=MmoQjdrP/TmobfpPeykw4uM4LthnSV1qe+OFkijoLnswi/P71s4+QMRqIFOrdqaeu
	 AVxG0YbCk2L9BZgFuFrBtp8z5LjoBu1gqCcpGhBYjiNlbSpivClDDVMLCvtug7kOSm
	 GkLwaWYAIkrhXwbS0R9kT26W3fLAP5itiihStAKhyiO9+4SkhTFGA9i8XdkCdGk2Vv
	 y8y/yh/r4/6bOt3nR2wdALXjPlDnWq5FpOUwd452l4jy1PTeoGd9071rqaCgIDPI1S
	 3Y9MiPJCZQbZSfJKvesu9a+zbV76+aj8aRVJxGoXQ9PT9zrSmM2TvssfCAt6hfJEAV
	 fB3tprzKtEmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7976EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862662867.13181.17302850207614116079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffc139ca7a58cf6c44290b85f436048347dac08b6d9e71c0bc287b7fd6200b5
Date: Thu, 06 Jul 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688626628
