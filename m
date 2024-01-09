Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9BE1E520
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzHSF2h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85697C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704793696;
	bh=3EIUuo9xTP3ACriEOj0RfdhvfzxSJKAnZGqgAkGMaIk=;
	h=To:Subject:From:Date:From;
	b=CzHSF2h1f4bHvIBmnbXzxgvuD9NMO/aHUJraq7tcB0slkvBeEBlMVkHAaH8XXgUBi
	 K6RJxZwmbhiaRkqkFmhPQ+6KOot1rI09gIxQEoc3t4YirD47VXOfmR3Rq5uFK6T+sj
	 92D0XcLXTpL43Fgz1p+e9uWXqsUn4WLRE8oP9blKgrkkpbjcuWyG1Eu+pAte3C84hB
	 z3NfMU0oIlDOEtIWuXJyBSF3G9pJkVAtw7+ap74d17V8vHlF/aet31VqpZo1EzDerr
	 QhRYg1ocgpiI5x6rBD1qz0vpvDRomSto52o/pcjKmpA1cChrY8M5hHUMTUxPi1Ql0Z
	 1DakCbHnbG3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6123EC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170479369637.9412.13414538061712821466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7f6f42b8f432c4b23d6bd7342c39d3aea4d325efc9fa3cb89bda9d55ee1a1b
Date: Tue, 09 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704793696
