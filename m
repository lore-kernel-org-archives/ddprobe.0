Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C00227F166
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762298394; cv=none; b=bA8uNx3J8EYSDJkgbzUiw3hFkiUSUiBSqZw+Dwotgml+hYnf++WhPq3UQs7Ru9a3eaRf/w1kHEjW+2LACV3u57bgxjXuab7LRP22AB00fgDDo2PTK7bpqfU4zFKmWpfWKx0ifQexqEe6nlZGHxyQKhNmGdFJVqU/sEeWDz1GcRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762298394; c=relaxed/simple;
	bh=hSV0VND+GLhtsGIhDwSaQtqVIfIUBhRuzrXgGwGDJj4=;
	h=To:Subject:From:Message-Id:Date; b=W8Ku5cW1CgmEANPv/DN9fX3inU5IZ3n33CWZRavHMKv0AVYoXkwdMe2daK4X1z95YSZZmG5yjZbC+sZ3QZP2RwVq7xIDyQZNjY5hjd/jkGAoPNVdCbPld/fEL2mKEnm7wYSt3p/oqbVRpqA1JeuLEm8TwpovGXbIIP6RlhqgVC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL7KYX78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL7KYX78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A709C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762298393;
	bh=hSV0VND+GLhtsGIhDwSaQtqVIfIUBhRuzrXgGwGDJj4=;
	h=To:Subject:From:Date:From;
	b=bL7KYX78fwBy4kb1WvdFAOOsPN/lthpPk/cGKs7Wi8tEyEB8bikNjSiho9GErouPA
	 5GR+ju+t2pwIhewqFB4M6BOylf3Kuj7IW/oOQ+ssJOWEyooggdF65Kcr9Nxrt4YEzq
	 5AcnrdC3iZTfaIda+vGn5QUiSpCNSjH1jYv5at30QYOLEz6W1hOFHKjMZ43LBRNHAQ
	 2AwVCauRN6Dyh19G3Bu7ugCpUxdZR4ymCTYsfiH3ORyzHMFv1t+hvkzV64dcbaD5Hw
	 LnW1BeK9w8wezZn3bON1PAvH7RBUiEt+IiyWBLZNzDnCD46JCKfq2mQjZXFBjb/wGW
	 tB8/bs6n0Idyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F964CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229839357.18497.11437174283335688868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695bfddba86aeed62fe04d19fbc22125dc5498161bc53aeab7043baa497eca68
Date: Tue, 04 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762298393
