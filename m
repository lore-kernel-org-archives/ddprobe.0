Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDB133C1B7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780412074; cv=none; b=Xh1ixv9zhna0VD5jMV6QtGo3WQmNR1TNtIzoE2N/h3C/cLBN5AWE57dUIg2aodlJr9aG06ru80dK2pHAg3EpFqNo2teDqlczLNNbLBfJ8oM1ml8HtVvLKEd0P/1fo8hlBwomZqdl3julQSIizsDgNA/s448Mhjs3LaPIvRJe2aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780412074; c=relaxed/simple;
	bh=Lbp7wndgNu2eop0OlqYvj0nAW0SBw0cm/aC4PmAcayk=;
	h=To:Subject:From:Message-Id:Date; b=NI+WsJAQ1Byyy41fqMImHXukL8qCxNk2/Kpf+0opuGrHj7/hIy0BLKtkJpUh2hX6EFk8rHl+UNaKn5OW2vJiYwBitewTxNIjzlX3yJG7+qWePqatnvn5WmFiAiLJI3cdiccPejDX4mjzn7uwyeSOpPfLUgMOXlYUI9lQtHZaZ0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGjLYmWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGjLYmWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9369C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780412073;
	bh=Lbp7wndgNu2eop0OlqYvj0nAW0SBw0cm/aC4PmAcayk=;
	h=To:Subject:From:Date:From;
	b=vGjLYmWnSRSqpl9veRfIeYKYZRuKjQ+2cOmq+4WFT2xK4RErjo8saMMWbrzmwAaiO
	 luBWbDsPJuItL2GvDq13rHZh/Hzlw0NB2TnGpmr7qrqVYD062/nq1xtZvm1vE7EjQo
	 J4k/KWIar4pPakSKJsYvNzHI8+CN/QFCFT0vsz1dQP56hoEAjANXvtJ/fGe95uEeYl
	 0Y4bof7pViH9otVI9ebGxWne4oRNuyKYkdAD20vR7NAVQ3fPCwfa1Uz01R/DEfJxQE
	 AN5hWJLO+WSi0QDvU30CZwmJ8bthCVlF7egS6YKpXOo36cuojAQjgSPlg08aGuUDIh
	 8h5blUIGBrDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F90CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041207369.4995.5205661939075720705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bd02d906b519330769bd357e6caccfb24316b0a3fc6448761507cb60e06a37
Date: Tue, 02 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780412073
