Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0C76AB6
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D57C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671144087;
	bh=pnDasjTn5fAsKpvh8H0fYwSXyJb2HpyuagQOhXqOY78=;
	h=To:Subject:From:Date:From;
	b=EJ2jewcj7wInaxDK/9oizGr8n+sgcD5kZ1Bc70b59IXqVSBxNpmSliWRlWD4yRQ+I
	 AS6yP1OK15mrgkuhUBnOI/T/yPdXtXRPu9caIhyLzn4w0mUZufSmKCQqxEQ5lOdqCc
	 36vx0I+9TEMQ12+ijFIaYogWrOHM11xJIiI34FITCyLlX2mAkG00rn5REiYg9dAirl
	 IxB7qLN7rhGOVRe5KucFfJtiSs9QS4YQz48Q88s4+PTZPN2rxfFTdasJT9JSbNAaPp
	 e+VbNx9z945dSds0ZOSdUT18rmE9zQMuNUF4bPg27PwUtMh8HyayYkcFjnsORZXoM3
	 qXkmEjgPpcKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6709BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114408741.12171.17784013775035742728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfd663d7d8b466c717d97f308d0871efda70db2a81f94241af271c9250cbd37
Date: Thu, 15 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671144087
