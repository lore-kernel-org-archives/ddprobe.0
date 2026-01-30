Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00130346AE6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769791434; cv=none; b=mzite3cwZ1A7mtqQkuSvsPTllPBLR0SHLYQwc3t/K66zUo4M+QNiRkA863/NJNs9S0diIDVAFAZcqhUI5JrQSeasPsfRrKCKs4Ii8vhaZROJ7UAFa+7/eCWwcrjNxQg6FEFBOljnzz7kYVMJUhcChVO1VqSU+9kFh6fa2IrE7Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769791434; c=relaxed/simple;
	bh=X/HIXZsSxZIcYyBMaBJQsrhg8ZaiPEQ5V1hjJXbcX04=;
	h=To:Subject:From:Message-Id:Date; b=ZT46L0hzakhFznRLuHWJuozfDAEIALaOc8zm1CVTnrP1ueg0lXFarQEunFOIxI1Olkw1nj5Scy0U6aQiadVqGz9NNrOVp7KZhruUxuoR+/OI716qU7RCr4Z7agNzDRUZosPagpvyXe5ZvwXysE0+MiBQnDz8i+E1E+jqNFscPXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiKIaJo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiKIaJo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2951C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769791433;
	bh=X/HIXZsSxZIcYyBMaBJQsrhg8ZaiPEQ5V1hjJXbcX04=;
	h=To:Subject:From:Date:From;
	b=YiKIaJo7YtFWbhvoEOX6S3vlv++Bqx7Gq/UUSTOJC+D25lSF+tyqd/RHR0KNGOlj8
	 l/QkU7Z/rO8lQY5dPap1JsInj++eYQQr9CqL7sfxPXqh0fdrB+8COu+DatRG3skgu5
	 9zpx96oaHHGSydCVAD8T8J2URRjP7fxlulJwyNWpX6PlrLq/CzNARjUaoZwJ1XVKrt
	 3j2Dt88pukvbT6d765GS+saASqWqbssdnKCCzpwoSHIpqHhWfBdHHWgBniCdJw3dGg
	 l9jOWZ2RUuPykzApruUJ+Wdy+SAlyxEXB7KwOWQHjWjAey+4RaTa/LGXl9XHZiQw6q
	 CIvCpdugvJK9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215FE6BF2F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979143358.8042.17009982401649826170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ae97ae586fc4537342f07af4527d0c7a3061483e536ea86344753d0a4a2472
Date: Fri, 30 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769791433
