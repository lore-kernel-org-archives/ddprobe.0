Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F1C10EB
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80020C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672279887;
	bh=pdQcB9lZ6Agl8R07feLk2fqL3kZl67WEpW3xqN8sZow=;
	h=To:Subject:From:Date:From;
	b=De0TdbeGgXUV95ucJHOK1AAGj+s8tWFSXM3uB1rNS35rIZcpkle2F9Hd5Pqt/eiCq
	 X0840QezOj+24YJLQGdn6MMt2rKEcbFUz3wSJ0uz39Soz+yqcmdEC4sKjUN73oNKb7
	 TEwg3Ab734KpvDlIIefv5MgtFKCYEuQEO+mpi3s99cLyWc0SFogifjp9MlduJqEr55
	 jwQggFwtulVDS6W7fKulj4C9C39+f17ITl3hBK5qss8iyqJE4PlQEUqRTSJ9sJHQ6h
	 3edc4lp40V2i/xj9S13vafxzs2/dk4jEvo7Qo0evJclD5tOS4EnB15w/72lZn+gSpp
	 6Pp6rnKmd4gsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D6FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227988739.30715.11389486890121860760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0a19edf34335872bba81ee0f78bcc748dc251b9b82cc1ec55026b071273d26
Date: Thu, 29 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672279887
