Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23784275869
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754654394; cv=none; b=oo1HvPvQoJ12b1S0uYr1ZqPFUEqm+geJlDlH8mqUSTVnTIpBbujplKU6tX4IrpN8TBzz16TtcjANDtRbEAXQ4GGtBPA0dmPgTurGCvTROC2aKhmy1g2Rk5U1LGeDGTvoEVs7wESr4+fMHJWO86+L43DwYLDfI5upJ9XfF/vz6zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754654394; c=relaxed/simple;
	bh=EOUALNbEaaAuNWfCHuvd7oj4f0vJG6HpqYj5NdNPhMo=;
	h=To:Subject:From:Message-Id:Date; b=u7/Xl7baTp+ICMhXtL3PfnHGbMYdsi0FJVGgkNcG1CnemG3BVQCIZD6ZZ8Fqd4+XavAeZc2HztFQGKuJd74o/l4tKsfrWp3pjlNtPUMTmAIANehG39NFrl81ZBKDmCwAj4ehGXtnVIvXXV2DIxvEllsZfRxlI47XyjqlUtuo7AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGymdG38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGymdG38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB35C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754654393;
	bh=EOUALNbEaaAuNWfCHuvd7oj4f0vJG6HpqYj5NdNPhMo=;
	h=To:Subject:From:Date:From;
	b=OGymdG38zBPQBE53NK6ShqZsBfPPmAkMhmElgkVQCscm5RuWwx+zX6QUVX9IQZVsT
	 uA4TYwUwtqnCR/5ztuO/+4NWY/JQ4+PcVKMCjZbK5O0bpydo5v3rC6HEMYon8sqd4Q
	 Nd+X/BGJHAlk89WdpUmfTkKg5sy2bUH2qWk0HpgBf3V10trpkKpI5S4UU6Azi3PJ1a
	 GTFbwVm6zIhvXvNiiWpEbLESkW3hYDBUD12oJ4x8pSC32eFyxVS+qUU1/wwyep6Sx4
	 8iZsSzlklOsAaZDiQmsJ19BPpyITw5azCf21uUxVh49vnJrI2tQwEib3x5+a91gRpr
	 oxo/cAd8VJNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD0C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465439357.24013.11860031252783995269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970d1b0dc54da62770e20ba387655e3d5de5976163ed7f4da08553db96fb2f18
Date: Fri, 08 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754654393
