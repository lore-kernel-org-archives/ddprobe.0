Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF2C883A
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F658C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671205887;
	bh=KKfiurZsMUsus4clj+28Egp/Dnts+pePBu/6yveiTnE=;
	h=To:Subject:From:Date:From;
	b=SRDSVfSxlZSSOAIi6w2juX71aaUjz8C9pS3GcX8uady6XtEM2nVukTHgKuEwQ1T5l
	 joAhXTjewO9fanjxHUhSmMbUcxIWSs75d++ifcqMZIVuw8QAZ0yEGFBoaAWkOUbd/i
	 vNksxhZ9EghU1uYHyi79ULwKWObf4CIW5eWXC9xBEIXK8QDJVQobLQk7jr3e4fRVA6
	 zhfie2QTG062xSoKub81gs3CB98MyS8DpptnyaAR61iQkh26N2ViDeFwOVknOhC63c
	 4AcLaxISYwFgkBX4kBNQjcMvEFNcH67iqxx2ZLV1oRlgiQqMVV+frpe2s/fjc0H+N6
	 HotWeYIiZ2/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647B7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120588740.20269.16036635859731019400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6be6537464bad0e4015b8e4db0c0c18413292a40546964f797d4b9d0c492bbe
Date: Fri, 16 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671205887
