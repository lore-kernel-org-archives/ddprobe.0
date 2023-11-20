Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B1A200B8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdAZkOq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2B5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700500096;
	bh=xUzwj+uDiZfKlUG5UB+YZn1f1OdO5j8UiytUPqkPV0I=;
	h=To:Subject:From:Date:From;
	b=EdAZkOq2oKbeInoxSys0bQ2B7WJ1nq0Jug65iLC8eqkXto1kjFEOVn4GH7FAX9vAT
	 47WeD4RFsy3WYh1aa//N9QsCJeZJOR/L+s9fP55U5whhGO+td6Baj69nH3dyKN/1YO
	 1obUmeMtjefHg5QxfyE4u/aNb1BiCFxB/xyq26LPIqN4tRQRqAGNm1RYnXHewQBVKT
	 5u3hcUB+DUkVRHiFia3wwDUZO8FsheXiv+7RWRpQKWYPVbFaVGChM3ctAc6X7HxqG3
	 jzBBvg5VyUSn4CX2js0zt6dWVXyr+3kzJPZXx+KTZjHzMh9NDRUXaF8DdwIzeqy+Rc
	 kMnZOL830Il3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC90C2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170050009637.17716.14052608417440681661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d886918f902b405f7be649d60f5835a918a5e16bf9c1225faa915237a8c76d3c
Date: Mon, 20 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700500096
