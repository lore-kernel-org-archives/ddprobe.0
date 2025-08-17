Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260984A23
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755398394; cv=none; b=od+lw+AiluMbo+ssXepfBiys/pngHt1I0HUrh9cxKCu+EjBN8ZE/CCbOWR2cDpMy8bANQwr3MCk6k+K3T6g9DqwULM29KLmhYHKJnX9nV80NwkRXdft8aM6vCBfn4q7gERBVUZRpY0uUYKCRgtYr5SN32lZKvKaQj8rPjRwMMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755398394; c=relaxed/simple;
	bh=8njdwwkB9iWiPdbZAv9zVYzVQDm2BFy9UOu5ckCQJRQ=;
	h=To:Subject:From:Message-Id:Date; b=f+DHHotlZJZQBqJqjnbQVH6p8wADpIOsBeY92ULmuUMuc3mXXhSDF8B/mgwywXPgN+kyqsv5R/KL2K2c91q5vIjUdoTgM8zTlCQoxRty9uJJ5Otp8CTk/4FweMOOvf2oCfIu/g8/CPJchAo+B+rG/XMDIUlDV98O18wbgOfkDrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6TDtp3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6TDtp3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6717C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755398393;
	bh=8njdwwkB9iWiPdbZAv9zVYzVQDm2BFy9UOu5ckCQJRQ=;
	h=To:Subject:From:Date:From;
	b=J6TDtp3tW7kjwcqQeql7glAgVbifE8ngkbq5EzQFcZmGGIlQZDWb/oHnZlOT6nwKD
	 E7WgxM03mjlTrak2gZobkq9xqa+KHuXhhS69DXRRjR0KWtdaYvDn9BrI+dAtCUW5wK
	 Z2D3E0a1zN/jk4VTMiJjb/jhYzcmSftBUo7pXcd35Q4X7EnW7fiwIJdw+QeOqLAFCQ
	 hFCz7K4rPnEyum2E1pS4dQ979z/65y6CFojwFFcFVRM3EKJRRRUXuo/IgfERXtwaVY
	 KI6ENDg87bPd5Ns5jDFLUJS5VxKtNlxliZskj3XTKUs18TJZQLEMdW7+7p18P2vSL9
	 gq9wzDGwjAbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E4CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539839357.21728.13042011290706694356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e877f71d37e87102d75ed37bdbefb14607886d42753b5dde05c05682480895
Date: Sun, 17 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755398393
