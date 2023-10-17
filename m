Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6613E17E3
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQWErSbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D214EC433C9
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697507228;
	bh=m9Oe57fHTL2YjAKZFWu+bviConANiMFlwl9SkLID5WA=;
	h=To:Subject:From:Date:From;
	b=bQWErSbItdD45qIoUOwBHqHhLj04Rbldc6xsRoSnDpwayzhXOLtF0PrXtBcaLwkFM
	 t/rVp62KAO2PFtiqKDxxOQLCeFpXCUMz0lsB5UvwGny+xyd9WPt1gnSPpeH8vjerrX
	 aLFJ926uh01ksY+13v8tHPHJ36q3oNp6P3vnlYNiOekQCxTXsoi7eJNb91KU5ahLpu
	 vX8pUYhyL+NUUz5LzG6D04OlG3APFu5YxxW1DdOpQFDNjbTpArrA2NMSopTGpQUnu1
	 n4+gglpe08bbZgXWOSRpiz8MygYnV4JSWN1zeohqZJeFXZ1BkxNtB+YWZZ+eoS79FK
	 fXMZ1xFSg0juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1895CDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750722869.19350.7326596884118483873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acb766dbd21f8d3b8295a46b91859f349bac1c8733554a88825351e1bec2216
Date: Tue, 17 Oct 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697507228
