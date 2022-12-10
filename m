Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2C9EDF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CC4CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670658087;
	bh=i/sNt3aXkrj3m4S40h0jypu7lBTE8k1ej3EPt6NRTrs=;
	h=To:Subject:From:Date:From;
	b=uedyXksCM/bU3feELrEvagT/cD/5jbYnJS4VMhV3SvtJIHXf+VSMHj4VR5Ydt/Fki
	 oURl8oIR6xTgFiZEYa5eeSy8ElYOPqYxhe3O0aC1ijPYDIX4zAu1muUIyd3pSVVwPI
	 I4l766+UNmi4h+4pvEChIVFQg/MmtLFXPFrCEpm/8MHrko01CWCsKyWdtrk16v1mjC
	 bzLnsdf+79qA6bgma9p3o0WUrOwU7TNjUTqE9aZRvRE7CCjgZSl2TCLTzpOW9MUQ36
	 6pFGcDdPQ/hrMlUsOBNe1T6MmQynMBtnfMmlPkPt86Dxslm7OAodt291z3EOjIMt59
	 wp0oh+VdQOUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7209CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065808743.32487.15978187220071835001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81505b75b2beb9a63242cea5123ad8e294c3ee6e2a2e2d4621afc1bd0b3da1b7
Date: Sat, 10 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670658087
