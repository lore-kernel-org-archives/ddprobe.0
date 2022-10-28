Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5CBBA41
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B20DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666998654;
	bh=w/ovCcyrvS/LB++ny/RJtkzUtMM10CT1MOv5N5I8CwU=;
	h=To:Subject:From:Date:From;
	b=bOeb1knM1KqDIeqA3wLe4vgRyzDASUnZ3wL8/DR8yir1weL7q5kcWcxD9NqXRIsD2
	 j47ywf5JWE37BKdekHL4lDLOPV/+AylQmaN74EUZsz6XfPGWO/IP3ArlOKkJcuGfJd
	 WEUOXLp+c1PV00V/IzdhR36paKpR6H8qlxY76yvRFxGuz2w8XUPgcQVkdz6cCXkYGX
	 XYQtYXTkwM03kja16QyfqIlckha3BsxnVI+ToGodGTA1GamuLvYW0ddw9N2/yCdFA4
	 uMqS6qsMYXjXrc5OLEt6awXwrnF1kimQkcGgjZdWLJP0e5vZaKICsI3NcDzoDnO4o9
	 lMRDJDk/6SNIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60472ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699865438.742.108535330414750021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a78c7a0d69292ef54112ab6ca10751a90091cfd85514c7cd76b3f1f1c635a4a
Date: Fri, 28 Oct 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666998654
