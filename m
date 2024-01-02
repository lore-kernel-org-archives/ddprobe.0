Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D031774B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmbNMenm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A274CC433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704238696;
	bh=+pLbQ2GIAoSkbtgSGD9JnJgTmeJmsh/1EHX6wgOGCAg=;
	h=To:Subject:From:Date:From;
	b=NmbNMenmijtJJXxHpF8bMmin0ETWdxWwlixQt+sOqQnKq5N5A+13Yyi1Q+BS3mvrb
	 jy5AywUijgaQBMnxPnGY9jbKaO5jx3lYSgkf6CcCKE1jr5ZGlNnB/7CWe7Zhc07ziO
	 MbpvLlXP3hZ5zynFwtFVWMa6Jq4dA3QEf/irlate1YQ1feVkHV4fOe6TB++HwnkPTv
	 Sg2aDYToauiHIvuPjvvksyVTHOzSui/dXuovukcW4znz0UUfwnV6d8uI8MljxZ0CLw
	 dYyE9me7CZlta1xe2UOUThpqIZ4+vaX3Et1DPnC6poCcHS1C/w8T7uQxfobmROHUaj
	 vSNVhA8W3IoKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B93C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170423869647.13339.424101787261481670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522e8575bc951ef520fe6646b3c52950ce0abdf9b781eff33868f8bbc30325b5
Date: Tue, 02 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704238696
