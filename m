Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500553D1CD7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786145434; cv=none; b=TrEG/LsmGd/8IHkDNY3BDNXcPpDiWkBsjj8NkuZaPtJHX9J06kXJBGteZ1WRBj4TAL99ayABxk8N/xKkeEr9NNHpfWl7oz3dbdK/iWKNaGwMHoG3pNTVAaK0dj4Sj03zYRShBa5aEmozvJrRwG/cQ1mprrI6vaQF5azufM3UKV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786145434; c=relaxed/simple;
	bh=2kS/UOD4eFaSv74UCTMcjNwHbmnWUEwzAh7mEk0QQZs=;
	h=To:Subject:From:Message-Id:Date; b=BFa8NE5PMjDkkv2u+SJnyLl0+C7Dv1a+4/Bc7nyjWh4KVNm6R7nEKuAO3UP0mjGj3ZIlRgEYvTpAqQrUVQFkhQoMcQIUbqpErUCa3HEkDgwG1HOZl48KCuu1v+ExCcoz8Wj8L9l+ke30zu57Z0HDrmrauqO66oczRmmfa4UtbEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn3XBQf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn3XBQf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF52FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786145433;
	bh=2kS/UOD4eFaSv74UCTMcjNwHbmnWUEwzAh7mEk0QQZs=;
	h=To:Subject:From:Date:From;
	b=rn3XBQf+ElXFhpY1CmHf3d7U2LSkKSbnPPNOhxFxVfotqBo9EN49fnGGrnXKCdCnT
	 LQAUl7qfzWbACwOLbaXsxKQFXuZQYxCyJzl6A9qT5r9iGFVrEytfLZszu9EcOsF9IG
	 NjXQ5giTLfP5CcV+1ZSn5h2aYt+D3KX4hg9GoiBaSVOZUleXu7OkK0waFQ77ezODXn
	 T4IEqq7/FWHti5HAs3iT9xWs2KiV4EnPk3oTSxWMUVDsE9twqHMvfIthexDbRtOWdM
	 XrdUdU5BTwfoeuPPkOFjRxnV+QpglZccPGb7lecRxxZehpcshWUaUXR9nQ1Jy5zFuv
	 bS2Fq6sIeuRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F7EC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614543374.1498.1383437378996606167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2006548866eb13260957761b25e80a779e3877a0d6e695548e770712a28de31
Date: Fri, 07 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786145433
