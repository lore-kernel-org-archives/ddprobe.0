Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E933D86
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72547C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665516053;
	bh=MFcoItZQY5mQl6B07ZwzcAyFfVKaHuiNDnDJteC+u0k=;
	h=To:Subject:From:Date:From;
	b=YahGZ0TKEGN7Ct6IbDlRBCdVi142ogaVijzgHeRnsm5cSP3qNKIfis9vndFK6yfKI
	 NYx4YHzDj3AyLbSTXx1/ZaN2Bi8lwxT3VpkYhArJTqKaFkHvSVPgYadr4dgJkbV1ti
	 cM1nifppdLFXFD2gnwUe5pRSXoLKr10AD7LWBvIs+/RdxCutizkkyKTojWZVFckx/4
	 0Y5mbC78qzudn42GKmjPyrowYLqzAwp1LJHtVOQlXcmIMmiN3j9tQ0+iMi6ybrTxDJ
	 w+dSe/T4gwbAcqqd5eKRHtbhXGkkNdxWn5mjHDKnPNUsuOlj2DuR0JxIZURbbyCFf+
	 h30W25J0jJVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6EEC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551605336.17775.6263019591188341553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c57aa1fd677f1498d9eb26155d3fb6e8d08d597f6472b0464a76285537c664
Date: Tue, 11 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665516053
