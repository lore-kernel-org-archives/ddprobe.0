Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17F3451C1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781996794; cv=none; b=DHPwjx3zCpM2VLzjQdJ56Utj/kqsnV4thnUZ+bjrWtTZz38XW2X7L9VGyC3mp6uiOUqRBBzlkkFhQ1/HBsB9bMCpN/z+T4uwvF3+NpKB6XL8sXZDCqFf6HxfKs345Aywd0+XmHoQHAJ+z1USxPMjBtcy6syRIV3I0o/cuTs8NRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781996794; c=relaxed/simple;
	bh=6fe+rKgnBtdH6UqdZo+kQSPQHl6uM/YnidmYwa+s4MA=;
	h=To:Subject:From:Message-Id:Date; b=Pw26gdtexcxr1bwfm/XgswXEzWu/8oR8Jzw/usD143tjJExQ2ofQvjyXiN2AD73OlbbdtKCYV0xJKYLPXdJdVk4qm1iy1hyC2hlpf5Lff0vvPvgkFGbzcnMA1NmPc17/UNKnSD9oqpN+YV7Rw10P+4zjGkY5teaUwrd6q26/n14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/zo5HsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/zo5HsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1234C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781996793;
	bh=6fe+rKgnBtdH6UqdZo+kQSPQHl6uM/YnidmYwa+s4MA=;
	h=To:Subject:From:Date:From;
	b=V/zo5HsMxs9t6pFRqML9NlhfFsuHehDNTIbPZliLBThgU+3/u1WtFqfiLzHmRJ2RP
	 gjv/PY+PpSUYDD+aOr4qZ+Cfq1SZqrWyuwCHg73vUf2Vpvw+KCHN4bb5Ss97dMnnHs
	 uPEzDkkWE3V/Zo+tDxZF/YDIkjVgQYKugTbGBtSDR/sSWOLPWRVfX9Q4ah+yaDQHtK
	 PBeuKQ+dHSKMWOQTdgf3JMLe5vYz7Z5nlETli+00WsoI+mVZizwV0jIp7hYyo64VpM
	 ffWOIFDVubOCJ8XbaLUfOIeRtRrdDqIWtMtGDkdhbHl+BZ3hToSDqfQMXPMQoIsa3w
	 HtNZ5oiJyAdHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3992CDB466
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199679370.15189.5923581769308613409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68372d44992e49fc4ba2756ecfb50ef84e905e5a78c204ae8d9aa509f832004
Date: Sat, 20 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781996793
