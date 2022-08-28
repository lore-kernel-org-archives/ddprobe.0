Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E6E3214
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E38AC433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661693452;
	bh=LScE/gNnQCoUAbNIJXOhu1YX2+LFSDnAnGRYftVga+U=;
	h=To:Subject:From:Date:From;
	b=R/LEpG6wz+GWGKzwvs7nIjqqMBRNK7XHQJUJPHqu7q9kfNSZx2i0Vzrfhk6345SH8
	 8ekA19cJo8tHRl8wkyZ3hmHl0zVzMSewzI71EyQ4fTCAxju9PT5dEA7dCGKdNSuZn6
	 XxyioieBZ9ckN2JDqaRwQXrgK8FHXp5zdkiSyyBomhFLDFA4KISP/ilM3DtMyEmLt3
	 yPh7PYllmN/l5gZuiJsHlS8Mwt78Lrn+xUejqrndFZM69PQwBak8VoQE7WxXsIIaET
	 k9Y3ytKgzgrSvr9/3v1Q3P8EHMZZfDukVFDVoew1udy+2+WsU9A2QzAS/TGpoNuQwx
	 8gbN/79FI/adA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51268ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169345232.32271.16865514979653629573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b326b278aaf82f8f0d214517195c3ab2d4a028f9d02902884ada08b10738e4e5
Date: Sun, 28 Aug 2022 13:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661693452
