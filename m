Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA20B231CB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751992193; cv=none; b=YgPyxGq+OQJVyIq1IHRMe9mi7K7Kv5Cn+sxzgcFrY1npX+aO0+r+gffo+eaSO29lLsRURBdpXixAdJb+TJkJP5IC56t71H5z1YqiZM7nxQ5OBpGpU5oT/779PzIAKO5Z8dKEJvsKWqjGjpX9ejDg62mpqnrJWbKCC7CrIR5383c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751992193; c=relaxed/simple;
	bh=E/yax3KMFdEJkzm/vwxabiDygcmkOL2FZ+zKxE9L7i0=;
	h=To:Subject:From:Message-Id:Date; b=nAkeIXPGVyWVTGltyNSVBVbjtmkZL65CPP3zVyQbR82PS1qxQFojrwS2sqNw4xiZcd/kr0nL8DhITqDxeDgholf1n3hqYD2v32NMKXxDUiYWVaVz35mJG2l1UWbAFZCVPuDSMZnLiIUnX16/za1CQpWGKFPFsSsTM7QsWm5RR4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US6uXsYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US6uXsYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F633C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751992193;
	bh=E/yax3KMFdEJkzm/vwxabiDygcmkOL2FZ+zKxE9L7i0=;
	h=To:Subject:From:Date:From;
	b=US6uXsYQeE6BEiyXEZrMLvT/oiabfnTP/e/rkZZr/FF0PDj5sw2mq9/QMoXbx5gmm
	 qzh4W14bSk0Jn/iMEwOXqRJe5Bt0ABrSrFuyWGYiiJT0CHX3jwj23E2dF4tSuyHj9+
	 sJOVsP+2TabM3klPcqvemUeVCzk6ePGNsKook9o9FpZiSH6ZwmLU0vq7n56izFHNMk
	 fBPPR5msKJGOBj1rNOBBaRImy7TT5wynL7/4a5Blu4qyu1UGVkkv0dalxR167P4KW9
	 gEyhnS3FedtTj/g/yjAoasFTCxFx1suDBwNyYlTj6hAFxMefCHcCDui+2cx9SfN9ph
	 Uk72gzH+vedgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA59C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199219358.18858.542335184930767792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bac7e0672bbfc28c7fb90666884f222fdf3d9ef3136c3f7b6a8f872083417b5
Date: Tue, 08 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751992193
