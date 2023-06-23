Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4848414A97
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEFAC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687555988;
	bh=FfogupA3NVIIlyNWjj3KhR3Z3i5oheNRYzhyc9nnaOE=;
	h=To:Subject:From:Date:From;
	b=XWtA//Zwk8HD2FDxAty7pY3Tlqr4q5i06GaGpjP4bWUJbs3tZEPz6rQww0l5crTmX
	 TMCnsNtY1cfh7RPtE1PZPkxap/2ljiLVoq8wTL2kPWzOZLLYFMxSY3STTgHqoY6+LV
	 6Kr+kSt1EZ4I1xIr4Y8ZtawuqnHjdw+/GvnDc5E6l3VBLTL/lfJgsJ/nHtizj9WXOL
	 DDmu6dmCYSPSq3mJetNDFIhZbXENAXIMtvjT7s5Trh9FfmO3TqZ6G9AsgrheRKu27H
	 cgcwdIqhsTPJe+Ax6YCOYMAaeDZNiL0YdVqZbo3P09WKereAXjWmfDc5tH6yIIqXq/
	 bk7t2Ji0fNu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65A5EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755598866.26893.14985926052080573984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c8c005fb4f68c3c01e0282c93bf662377696c20abd7207d0deeb54f34e354a
Date: Fri, 23 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687555988
