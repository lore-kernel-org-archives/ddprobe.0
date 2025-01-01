Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369761E22E2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735759554; cv=none; b=Ohu0EVB888rnU1J1Dw9d7sc+uBtRQjtIZxF1Mj1PGEGabLTdLwgb8ENrbu0W1IqE0LuhUYa5accsuoRWYwvmEwXYGPqmT+s4AhXhMHi1dQJnAsuS8FvFzvFQG5s0fhWP1DQ8n9nBESB8e/ZB544onoxZ/tt2KZ91+TbQ2GOCfVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735759554; c=relaxed/simple;
	bh=Dw6jlps3+Mbj8Ge4XeNboeVf7XNga7BVX96htu/0cQk=;
	h=To:Subject:From:Message-Id:Date; b=jsEys9JsS7Ai9CsPP5q2R3Td2AV7P3cSHEELgkHPKzzte3BHyoSkhqKJjx+wcYrnoRQ1gkXrTmfVyNvSAx2x5walTimZOfS0Hsn6wLtxUY4dINE+eY8O39KdHDda79UVM6CcrEFAkNkBaFBbPxDyMOh/56yMiujSijrn+J+Rurc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2Q7Axhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2Q7Axhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06DDC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735759553;
	bh=Dw6jlps3+Mbj8Ge4XeNboeVf7XNga7BVX96htu/0cQk=;
	h=To:Subject:From:Date:From;
	b=e2Q7Axhq/6UdCckF5W09/Pw9wcjor23stwphfsCmOvgd87Of0uEyu4dzuyBk8ayRX
	 GUBXgNrhfHaBeI9eUytTnPYxXDFkCNhFaf0MIf4Tmsuy5j/F+EiBwCHpAM+db0KqUi
	 +uGuO0Gx3iFGDK8+MzLQb1p8Vpbrctb46XNVYq190zVNcpg1O3G+dYjheaiIcYPL2n
	 C86UqQuKyNJrfmrc6LlilOVuz1bvcS1raybr8rjFWbkBmrpHfFwQehkNkscEOuUjjz
	 6q+RI7WCpTQvcfT0FEbros/kDJkKmGmD4TFGqyvSloZqPIhkPTWbhXDF6ZxLDOTDby
	 2EWH7A7HRhStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99903E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575955360.23397.7079866707046379989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc489789767c718297cebd7fc8ac43bdfdf3cddb9c373d5b6bc824e8479566e6
Date: Wed, 01 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735759553
