Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B112145A03
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746257994; cv=none; b=a1853CljAwTBOJyCcqZwWRaxYcA6whPbfPEaxSSIGJYSKZLd0yXE0anyWWV4RrUHtRCa3wPqFcc4/5FDwGm1lgHvdBxpj6x4MKhWHN2pt8c94+F1OzAppEqJE/r7QsY6CgQ7NNt7GnPRBVtgip3DJW6OqZ6jS+DMY4JhCWcEv3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746257994; c=relaxed/simple;
	bh=pBUBdmVLNdHin44slSbNVHxxiimeM/maQy25dSJAIGk=;
	h=To:Subject:From:Message-Id:Date; b=Eg7tnZRyvWAEvW1V19jMSgQlVqcIz5jVytWZY591Hktvx7hUKSNxqxNMA3hItc1cqALRJUBkeB/X6cP7q0LYhK5Dj+pCbYgf6bMzrfqEQsyX6Tlp4/sbySIeYWj/VwIwUeBufQaUfOpS+NpU1ru+s1qz4AeFpB6IYe3UAeNN9co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghZ+YqU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghZ+YqU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06AAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746257993;
	bh=pBUBdmVLNdHin44slSbNVHxxiimeM/maQy25dSJAIGk=;
	h=To:Subject:From:Date:From;
	b=ghZ+YqU/8Fe7yCGqHrnuEVGrkMBwS1hgKogknaLfSgHOz0CWr7pJ8nLZr+Xu5D2X6
	 vuYFWciT1dKdqnmQar/E8qOvRtFKOk2XlFRmcOlTu51VhEWJ66mMvU4Cz/vhcscS2p
	 HaKSKys0d6CGloXhVqLHD1rsIlTy6Le902Wl0DOovWNHYgK1EsGbRlHh+2TBEN2kCA
	 A96kzP+0EuNaO7AYUTRAJqRFVOeLdJfMdo9fYx0ZabzXhOEuaamFDXO7ATFWaLO0Xk
	 KYXCVi9nbNDEO/4tBUD7BHZsbBmdchX30g3V7vKhNOYczbZ28m1JwDH1YWe1V+hRyv
	 1AKeOwTkLGbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E915C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625799357.12820.7749942467512967599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc3e54d82053bc239420edec6abaa850c5f9cd5e517c0d4d84705c4c49bfb40
Date: Sat, 03 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746257993
