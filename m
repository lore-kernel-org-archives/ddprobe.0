Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6DE81733
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710857296; cv=none; b=FEO/CBZA9QLzBuDvRdrZF3tTII69U/x41g6EPSRLl+a7V13fMspXou4wFh9mqoPHktNyxLlyDR7yWXD4PtQB1I7OCF1JOht4fpBPzukyILbJHuslAOUAhPJ/LCOu2vITGEiobQxQcz4wui4NXr4mrpkY7IXxa/vEYYVJpfw1w3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710857296; c=relaxed/simple;
	bh=AfVSx8tZrDphD9QhigMOaUjvxH51/Gf7jKI2+HrHj5U=;
	h=To:Subject:From:Message-Id:Date; b=IF1xnRHNwABRiMwlf3n3w7YvnPbj4zpmzzdXtCwAbql/+yW4uvlBLUL/zR9WlHxtPRvwBzAvB4+KMUEnMphsRaDXAyplB0nbx3pjHZDSVBM7V+j+755Hb2JK6n/qms+GjVsQfW6HPtz3WJwcT24GncXd/IatoFVpNXuMLEb4GTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wgf3MGyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wgf3MGyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAE5C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710857296;
	bh=AfVSx8tZrDphD9QhigMOaUjvxH51/Gf7jKI2+HrHj5U=;
	h=To:Subject:From:Date:From;
	b=Wgf3MGyPixBId9PdOXJaA+Lqb4FYFYN8h7IULLcQxRL5Q3RYOlgiiRgeq+FnWqeCW
	 faB4VG2Lv5KsibUfy77T/XC6TlOiGj7RmBYuRehV+S2mIFkXjr9szSpb/cyF6mRpXa
	 OjiUA7g/gkduLB/PWvdsmyWkV2Z2+pVpcAvp4f3p/ko76+lQ7I+E8uEFeEYS2Chb/g
	 Gnn2QtIinnSbfBSK4yLitXU5WvtOav8tvfxDYctENOYsx2IpieU9A6he8Jxr/dP3Jw
	 YMaJiUSE+R1Eu5tVnd8usMY9IwHWtaY9bMLwto9uhsc7h87vc9nGUnqUWM4dV2A2WF
	 4JNP67EICN5Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BB1C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171085729637.1957.9266260465966427821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffcf34c844d85b66465883995a66bcdb36db69764dbf292d801d34e0a6a4ef7
Date: Tue, 19 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710857296
