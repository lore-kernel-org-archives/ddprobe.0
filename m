Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C9C2AD3F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787794834; cv=none; b=elpPPwwnERamtAtIQcn1ONkOKYpX6Ew9SqSKQYjTaYXSMjqMtyqAxvNyxuUw+Xo7szmqG7qPwbpAWO3SxjppWbI/u0tkF1Ugcrs2FtwW9FR9UeeMj5JEGgq7KrPNhzkTQYEh2NSP5Gii6sQTDD/fSzZyWID8X++GgOndzpzSba8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787794834; c=relaxed/simple;
	bh=GNdDFN7xlGq8xDFKsc7e/m4UcNMM2/XS1LAaEac1deE=;
	h=To:Subject:From:Message-Id:Date; b=rBx0Ii7vvjnaOBepfc+aGOlY5f2WflOKir9O8NbPvQfODX3feLOS+pbL5OUxJM3rM/1SgHomBqyyGU02zrjkY8Zy8rQkMJl/SMz7k1xyJmA8UA0BAZo0vWsIU6d7KITyPnI7gd11dVbE0JE7z61MwV/rFDI1CLkjfbj9sIxwh68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYoEr5WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYoEr5WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787794833;
	bh=GNdDFN7xlGq8xDFKsc7e/m4UcNMM2/XS1LAaEac1deE=;
	h=To:Subject:From:Date:From;
	b=uYoEr5WGKkAtAijBTx02aRtqimWqeW1mrh2AViil9ZLS6K3K0+HfH7r5fwyyl0ETv
	 jG3rHw2Ony79sjQkdxDny9PcVHd0LlDScTqDtLrRkPg5KXHzmEHqFfEWsCGYEooYSk
	 gFYjKdCe+WDvHcLBEGS0i6/D1PEO0vmG6Y5gcHq6pKuAl5GYHFHIQp2bru30MTnpCd
	 3puMgVu2YfcpzqcmkgfrOrJUDBIQTIAbfYzjiTQ0vcJsakzi4pjutPzNrSBzEewy5b
	 fCdh4J7zUEaEOFKyT9wi75Uv8SO2KXpYHtm88NWeY+RyKE5pW/fPr/gMQfVdIU9dYr
	 OOnDe67NifJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D4C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779483368.31940.64775653896814354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5734d5657b77ea04efe6d222b7420f46da199cdde7927af412903872245e73ee
Date: Thu, 27 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787794833
