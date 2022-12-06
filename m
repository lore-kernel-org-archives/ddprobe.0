Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93143207
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D30C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670328054;
	bh=RtOX+9qDdzoVER6aQycwsEeBfJdqi87EK9IDnzXUBE8=;
	h=To:Subject:From:Date:From;
	b=nXMseuBNbrN8Afs5kM5A1PL07Ym6zoBJGcm7XdRQKfDoKyYL1vROV8+ACxrm8v3OU
	 UwqMvoPGLWKzyFf8UpepVsywn9Z8Fl8BCNd+sPAKgZuLtTwYx/xhsi3AZGEkYg/M01
	 9H/9bNOzxS7noaea+L0s6OccXp2la87jYeylKr8RULb+kNLhdpqlxkAmapQns1AAsw
	 pqGmqhe3s8o3jc45ybodO6YD7acLqYTYZrGsjIfqvMlXSfScextTFgwNr91AfWMLAn
	 nMzqsagBiAzhU5NpclpqJxEm+6uZFsjnM6FYVLC1s2P4E8VbRXSE7GEWaIUxVxpmh/
	 GakqKt3fbQFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCFAC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032805436.13594.6330557558139256558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287da73caa4bb69cef52946ae3817f5096286e6c46f50df7f781540b7a8aad96
Date: Tue, 06 Dec 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670328054
