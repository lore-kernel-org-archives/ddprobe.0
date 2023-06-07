Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0931C3A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D40C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686122525;
	bh=YyRnmCp5yE2c+H79yq1C7js2LmiU+jlhoeuDX1Rufbk=;
	h=To:Subject:From:Date:From;
	b=oEhOdnD1efzHPPBGMh/XgyMjxW7hVQsDq/T8UiV2cdPZjHriSPu/gcBpjLDvYASw9
	 OXQAKPX1bRyTbDf9mjAqxteoGNMSvH4ydKLPrcR3o38Zh7dnB2yMda/DuuQGi5HzXp
	 rZ62pT5F0FCwwxY57HF4rYPmVAvyxsZThc8deHJoUnhJuznwGto4mmZ6Hj8hYEQPqY
	 eHR2LH7JL+2QOKz9um30ftGXQevBOTt0IJMjGpUZMIpn0eCj0kJoUXgdeVNWZT1Hv8
	 2/5aJtVS+Bgq2T0z/3PaG97riVKzWLnf8y1zmM7o+21wwTvnujYlDMHBnRIZ7TMhMP
	 HpvuOnXWgGYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A52C7EE29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 07:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168612252573.19706.9443338467472462327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a9922e280c757b40af75c351617c302be7dfdf127bd5526120953371bfae32
Date: Wed, 07 Jun 2023 07:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686122525
