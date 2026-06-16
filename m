Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F13C277B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781580994; cv=none; b=jsnkvJOZwadyNK1Pays7wM9X2rG2iIkMV0wU/c0SqwNoNq5L7oG00m3RORIhq6P/b0iMTMAXTYZGHGc48nO+6yfyUJCdHJ/C7eMnrElMqsG3lu0ebfH2nM6ox63TWm6Gm0pz+Rhnpye2P3jgnjce4xTv4sos06jiUts+VXd5HGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781580994; c=relaxed/simple;
	bh=K1kd4eCy5d1/1Pcen0iQqEhWdGvC2y++dWolfDUXQwQ=;
	h=To:Subject:From:Message-Id:Date; b=npNDt34TMK7DZMSvHE+X9sh2xqG0V5FnBBasnKv7vIw1e8ymiQ/Dxa5SN03GaI0ajFoz8s5TZoIYJMOpb7Bx/nJuftR77tv0/cSGqeGDDaDemhFFVr37nk3OzKCUpcB/HDV7s26Ry4fpaAxWculH/bC98u/BwVKYZWXkyL5mOfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4T3ByBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4T3ByBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBF0C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781580993;
	bh=K1kd4eCy5d1/1Pcen0iQqEhWdGvC2y++dWolfDUXQwQ=;
	h=To:Subject:From:Date:From;
	b=Z4T3ByBL3dkN2ziJp7m+fQ61AONK1dLdZVErqoU7/8pbSmKBRK0wOOWj0E8uKi9mm
	 WzNQSREhZN/WbNyVqhs7kuThedD1p4n6YHp+YkW4OcPhfMaGAKbBtvZyIuBlDtxCdw
	 S8nnlmvUu/xVFftrcBiLjQthXRIQ5m7YH5gsN9krOX8gfHRz+ofazJ5C1+NuOPCe7D
	 eSMBakPE5VVuFPbHlFLkvaqnuv9yA2MguKnO3tngAQX1EKBHMNddb0Vr4eMgfBV1s/
	 I84tWroj3ndgqOUDgv3IcSBJxp+jevFGRAHeO73xu1NYATOICeKbRlQUXCcmIUktFk
	 lUT4bax94ZBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F8CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158099368.5320.3113760626130010907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af17e91355e1aacd075157f3e63cf311c154214b796d01f3f1bfae26471976b6
Date: Tue, 16 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781580993
