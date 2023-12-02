Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD60BE64
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+x5sDw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753EDC433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701521296;
	bh=SdwuMAO21WeUroHlNay8AUzpXh0hLOuJ8bTKYtboCRg=;
	h=To:Subject:From:Date:From;
	b=q+x5sDw2BSSPAjwCElLZ3feKjKhQD+wOrcMhGE7soEXmO/eA9sjikG2L/F2xaq3cV
	 PlP2vr/+P/ls5OPmnmCrw6Kw1cN1b3aaoQnvqWFFbRy2tJQ4CQjD8JTSDPauNW9DlO
	 z4ZleC40YGUUOno5e1o8nkPGXN7u9JcRLr7lRaxyLI/W70aIRR4Pq+A458EZucnYhT
	 6PRNNMKpw+GtTI5b6dNVF1s57gzjJPnC1FzPvm0XuICOKtAWpdNJUMqt0mAGKVzLq6
	 yg+mOzpz795NujEG86tmHjfr9wBfSe1KEZwwI16KtiMCqQTukK/V9h7gpa/OZ9C2yI
	 fGw2RuWEGhHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C867C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170152129637.14183.9609447544119947532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d9dc9b04ab2de36f8b91b52c5b29819488851cf82d635256394942d0b89695
Date: Sat, 02 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701521296
