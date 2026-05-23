Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E752D780A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779570754; cv=none; b=VwKQ4mc623boHC2ad+lVEhYEZD09//RQg8YHo5UQFv/Jh/S7M6PKm/pY9lHBKuQUuTkLQcPDZkiT43WwsN6aU9/apVzjDZSQlb0DMRmoHbi9etZ0YJhQXE/jGzgLminFwkESugTQSXK0Gu9Nxdc/ztvSMxUDZbU87dzwdNEMt8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779570754; c=relaxed/simple;
	bh=DZ0gYKV3HZsqRuTGqhIY2Feea7hbWSrhQUTyGgzM9sE=;
	h=To:Subject:From:Message-Id:Date; b=Je3SkfrMOeQwMhIvgIqA4dAIFMWzoc/yvzl/WnbK47McPOacUQpm/dsNBLCaymEeEmXbcu0orRjshgN0Ue0Y6YOibIxaZgDQAgxhUM9eejYK91k1BINf/ZA+tSNmCVjYu/gxlCZsGHikuyG79v/Y42Ax9TGTo/0CSIIzq7Bke28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGfdx5f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGfdx5f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46E1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779570753;
	bh=DZ0gYKV3HZsqRuTGqhIY2Feea7hbWSrhQUTyGgzM9sE=;
	h=To:Subject:From:Date:From;
	b=DGfdx5f7UwIm6C6EFZLwbuuxCtHVK0E0yX6fxZqTR+bYoeknu94GKFxwfyZSsaRzm
	 k9MRFHUFA6hTpsvP7XyzzpZoFBF+maT6LW7qSNm5stkGiqG8T8LCqKWLFduQWDgrVU
	 FcS4j0tv4UXJgyGQcKYhfr+Li78blU81ovA2yeTlO3+s4NrwjXJHMEpF3dFvDsAqnv
	 4M3ymm9uyuHz0E4f4qNycMcscCPVJIDrjZlvBDky7h/u9dRRnAoCZ3RCfLlz5TIr7M
	 VFCNRKhYfJOJPlIxqjF/YfI3vlhPCWhW2IeOHoK1nw3kC8Kx4N4LF43IJZ89gy38r2
	 9VVQhoOEF5Mrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E1CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957075368.855.1095695828992840245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129b0bd8852d35b005872981fadbd3caccc243d05722183ff640e13c03c51a20
Date: Sat, 23 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779570753
