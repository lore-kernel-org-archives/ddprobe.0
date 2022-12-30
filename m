Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4461101
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DCA6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672376487;
	bh=/eQDTJPdtFl/i9mt6STftA+kBS8oLHa0DuJorlGbyZM=;
	h=To:Subject:From:Date:From;
	b=BTLVJJoMh2Q1PihA/3iLW3oa2Tb9R1GeWIwJnMGVWpppmXy5e60vrqSq1P15N/fke
	 LgPW+iRkkNu+CWXqPLzVaUYcBj4WMtVFfpHyRMSEchxOpaLUXClFzzMDLn0pF1C/Nx
	 jkeBNj99JBSTSBkBwAjgTaavK7DMmbrYneOsPjY0HVD/wFcBBnt+/fG008tjEdNSij
	 +XllydOS47lzE9/pjmCjpJKy7Nnn3EoksXjGx+lD8V/VGYYdJxk0MOKTSNjBADu6wt
	 PliGxjVT0oXLUCC1EhnaGx2cwnixCxYSsxv3rNhWh6Xs9S6rYWdFDTtmbuSU0OWGSG
	 6k70RlWcwCv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F42FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237648743.22763.13803106727950947075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce06b31963d573ad85a6ccef8e4f0109ebf71cfcb60d50e564c84c5d9b366cd7
Date: Fri, 30 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672376487
