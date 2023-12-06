Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B9F525E
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czie2LOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D2EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701829696;
	bh=cV+AFVbMzn6r0SRqCBSmJvfl5ppkd56vpdmAnzUTxfk=;
	h=To:Subject:From:Date:From;
	b=czie2LOe9D1Mzo9Y9uhHPa5HhzoWM9NllWLmwmjqU/e7dZcSqEyW9q0y4u+OCfBOB
	 9clNYtBtMM7SevSYH1EEGRes51cgJUt6hoZzVrYF3X5OPY+IHy6/bRd79sNe/Z5mHt
	 1eUkKNMX8/RdroUranQJG7tDew+d2e63Ew/dDKjx1egJddVSB4JyVw+KyOqFCp+yrO
	 gYopcpfifHegpf0Hn4a0YpAkLs8q0UUzRv+lVcZronau3AZSkdzzVULDfEHh62rTlp
	 scT+eINfppPPZKLdUJfppAjNIHrGHrTvcKeUyvgNNYyTH6CeEsNbagRqIhncJ5Io2v
	 ZSiYlbizGMJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9CDC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170182969637.27153.8449103341181231081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee702c0b562a8997b99a44a481fb08e34cb14dfad2bac7df05ab7a6ae256d664
Date: Wed, 06 Dec 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701829696
