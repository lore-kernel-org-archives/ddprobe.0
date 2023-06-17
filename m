Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D6B20E1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EE0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686983948;
	bh=LUOpUOdVi8hSAWeDTGau+iqHTHV4sPZg2RuqrYjbPJg=;
	h=To:Subject:From:Date:From;
	b=CexRDGmv45O9+8DLYcRWsnlg043fubpRwliOGFNLpApm9YEvRsxDMtaRJGVZEa0nJ
	 jHnu9Y2T05pAKjiAuu0wQ5ctf/61d9GWfwRcHJ+FKT+HYVSoJf1JkHpYVYCrXT2J/2
	 Nd7RtjZBvQTSjNXwQkjvTbXqmYtHEX1xFDr/WpIlTaq7BPEbnZ1zSBQQozb6prl5m+
	 9lPDzxtqRcwooRMRfnmTAPLGNe9b5W/aU6OQj2121vl+LumeqjVd6po90JaD+wkey/
	 mhu+QPnOt/PTQcI6yQpSbgU6+u6NF3uJz8WitKhOUSjcIEvMy+pAb6b84SYHuge9MN
	 htSMSHd5igHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC96EEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168698394869.1609.5558104553066330105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6cc4020648996501bf95071bbe17549aea29a4bdbbed281621d133360e8bfb
Date: Sat, 17 Jun 2023 06:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686983948
