Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5482133C4
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 20:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D6A3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 20:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677012066;
	bh=TFiREounuLzjPFDlvneWgazs/PXX79cuivfNC9TniOs=;
	h=To:Subject:From:Date:From;
	b=AL/+XsVqrL4xgRa6oGl+b/EEtmanzE9uOYHTHQ3mKJcoP0pRqO8ZVaIP9nK0jghll
	 s6Qbk15M8GArRjz1ZlSvWbW+/kSjhnelZJIT/+SCt7sJ/iLei1gMuAeBaBiBO20Oru
	 untsykogSZ6w4t+9tk3PmWtLEaKwxCrmy3DoQhdQclJATBGCzp1FXfVzyZWPAmPY6z
	 eLylhZnfdaRpF/vQWCKQOcaViqF3UltekZBp+0w++/ug7ZOY4ncSlKwgLJm6oWajqR
	 6QuKaqeIjGeH9R2HTdXpF+Dt42hjFmGthYLVbQ+xtr0HoN8LZMwTG6j9ztWi6CF2VK
	 /cIrDY9bZO/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE969C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 20:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167701206588.437.2213127755366274356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b5757985996f438e79ea601006010741bc0e2629757b23bbb9323c2f840e2b
Date: Tue, 21 Feb 2023 20:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677012065
