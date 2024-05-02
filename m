Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7136317C67
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714617143; cv=none; b=GVenWuSSxz9YGe3KZ7XAzJpM5bwlP78sgpb9fLyI+N2PR2sSgoHwzu0O3e7ZbRQOFXmQ0aeC0yBRTLkycT4PXPoCB1G7Y36sX3M3ol/FcHFTpJSwRpVgb2Vk39gehvL7qbzBSPxiEly3JT5AQlrmuXTgqoSnLW9qrKslIByCcnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714617143; c=relaxed/simple;
	bh=4pcLMM8xQpzOV2KEjwJ+IsHpG5t2MRjxUNKeiPkya6g=;
	h=To:Subject:From:Message-Id:Date; b=mnGUm2gAYmXnVnfz+Uz1dVpQGGRSW86u6S0rgdCHco0hREGTrxe+slexQaVnPvJtayRcyQtdN7rimh5MIFX2ZLmPD27zMFXy6QMy4ulI0OBjox5Sfu7YE3SHIkI+3DS/dfQ/PqIqXfHtPOW7bRTLpmT/6cb5BSxtbiwPDnFnlsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsllsimP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsllsimP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F8BC072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714617142;
	bh=4pcLMM8xQpzOV2KEjwJ+IsHpG5t2MRjxUNKeiPkya6g=;
	h=To:Subject:From:Date:From;
	b=AsllsimPwNdFgRcZHQQSy02KqavjOOM3y4qprOnbVVHet8XgvgB1X4lsZa7MWkH5M
	 GjHEuh0dNY0kJCzlJXEf6Hl6GdXxBzm3LjrFtLeQdM9fKStchluG/XAlgRTZOzCfh1
	 OB3ZF5aIHutSnL8sYwM7QP1lMSXCNS1yn+8CKz/h24YUM+IlCR2Pvjw5+t8WEewadq
	 3A8XGtFGVym6zjEU2VGhN25PXnPuYP7xAOzUvitx8pRqM0O8tO1Ll6ySxncwG4oGSC
	 W00acr7A0RXp1i8VHCFj12+PkZYJ0QirjmcV0uVZqqtEmaU/LV/KBVdATDYPnDOL4S
	 KOcPAfyUEbP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEACC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461714279.19259.904669357281898903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc0f275a546eaecc6154703122ae68636d99f87bdbf12ac95af55bc9eae3d8e
Date: Thu, 02 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714617142
