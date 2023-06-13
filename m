Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4503523DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE758C433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686667028;
	bh=/IBaVRhJU3xUM7Ubl+yyoYi1m3IXhG74SmaF6jd8kcA=;
	h=To:Subject:From:Date:From;
	b=MNB0ltDjqUC+6d+35CCKU5dt3ombSgJOo65BJHOQLpbfhs4duDid3BXB/5LaenlPD
	 IU3T72NWUFO6LRREE7471zZRmBcrvsLt9QaiN80L1ZyOvEpFpP7CSO60w2zzDKhHgc
	 kDOMCeP3itQ58/a1aCcdorBwQlGAlRwqjdD6oEV+GS5KHfL5UnlCMSoFOuC5fhdXae
	 fD2cy/jtx2YyMPAITjB4CL1nwNe+YWqhgnsLnTO5zJzqaMdrQGFswgZFUzFV1qTzdu
	 lhqmHSJ97Kygkvod1v9ox84CBZLZ35jk4+ZQFX0Nt7tJOWWFXH0iPbJXOgkmioYABR
	 Rn1YrKJXsZO9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB21EB64D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 14:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168666702871.5415.1263812168814312151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8540360de46463216bd2673daf9a9bacfee8137da3b83501d42a27e54704fd76
Date: Tue, 13 Jun 2023 14:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686667028
