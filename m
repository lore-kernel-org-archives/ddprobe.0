Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604C8125B4
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6925C433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690238528;
	bh=dDHd/prqqkmVCLgUTKjVU2ffq08lhYdLNSd3cDFGvhM=;
	h=To:Subject:From:Date:From;
	b=e3Co8wkdjgt7GuTi1T8xJuq3LIYWQoKU1KIfcR2GoO2H0GxGiq8HeAoos4YoGX9cN
	 1tldWquuJeApPBvs/NgNSEvdWBrJZ+5keF2X+B6/otp+vWov/Ti+JiWa2xLZwMyM74
	 hgvSx2h0yf2tyXm7A3e/cD3JkeD1dYU7MTnAliMcpkjCPGpCAAh/J2459oNQM/Xi6z
	 6QpZTd/4lQ5MteNgF5Li3vj7aRAn6wkvOT/2V5+78CZgTRBDfZjCuuLCcIcHTZshxA
	 DtWvsT3XGceesN5DX2HsEck0Yyw3O/DqfSeaOjrI8RdcfJkMKlIyWuryOzBi4Y3jS3
	 z6KpA69Que9fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43FEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 22:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169023852869.3354.17027080401542714583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761f0c2dee1e1225ff78fbf3d09324f2e24409ae4bcbd3afd7fe6380cb89e349
Date: Mon, 24 Jul 2023 22:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690238528
