Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8AE8F7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660A1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666360853;
	bh=+yZO3rlZpNMLAn7SQRZbLff3HhfVTW8thqmLS0VUNqk=;
	h=To:Subject:From:Date:From;
	b=qA0Ye2BTea8QTGpm8gtmClFJqUb4IHeGBAO656D7rtujJ/wh0/zjmXB/lpY0fNXNY
	 n84BBXYNHqJNyI1cmjd90elIzA5PglFv7ZFfEHrq5BdLfTqAFx12vsGknDa1ZS6fH4
	 nWYBr79VjQWvI1hdcTt4fL6dzDeNzEKsJNhewkxVpP4DA6xbasB3dVWJX7oWK25vz2
	 czR0xqTTHWeyjH+9SDvWmo46OaQ39aTi6QG63AollWiCZovBKexo6TXPjL6680flMo
	 A6L5yGuZcGVfIUxSokInJWMEkejzzOJBHIzpJThL+S8CmEc8fLXVvHg4eL05xyDAbs
	 G1lvK7/9DAA7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB07C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636085331.4521.10386306615440325993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1e6ee31c53c0f0552b15e804ad3103697f37b460d39403de17303d21375c89
Date: Fri, 21 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666360853
