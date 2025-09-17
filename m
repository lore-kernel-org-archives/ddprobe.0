Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E595D21578F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758071994; cv=none; b=br+SMd2WNleL4tkBY/oxfL7+qppA4CeeZMNw4ryCoqPzTnPJ9wb9dEyq8MC70PpxKWpOHHQMHXhG8FEcL2kznLKcOeNstvZ4wrKn5Wrv8l/9CnU+A8p3HHKMcmyUGNyjRm6l6pbqSoaXx4XF5wdI3ASknk1gPeSBDruNGh4oWuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758071994; c=relaxed/simple;
	bh=xd58fZk+NzoINkArdTtP9iy9A41/PbEw3pMhPlzEkT8=;
	h=To:Subject:From:Message-Id:Date; b=giYKsdEI/pPY7oRaVewOlp/txvhDF70f9XVCoD955Y4bHROcis7p/9A09zW9tRwZymjlyf+458dKhYQm2+boRP/qMzzSNCvdtc9NpGjmYngehH14b/YIA+e3W/Y9z/I0+XofOCu9bTrwlFl/7+mX8+oPt2RMAUViYmnnkr8qvjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys6CKHqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys6CKHqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E61C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758071993;
	bh=xd58fZk+NzoINkArdTtP9iy9A41/PbEw3pMhPlzEkT8=;
	h=To:Subject:From:Date:From;
	b=Ys6CKHqcaWyS5+TSzftxp+zPm+EpAjkOo/kUs9FTEHn6NZvJGIN1H3TqNWxK5jxaK
	 rF9jN04kwXmptTzwbXI4AaZQo0uugJ2EEWqBwTx/+M8QDCIgrSS7rBzAouOmQZ5K0q
	 YuS8Cncq1/ypadaVNXni1ywaZLTd9J/eJ79KGjPcQR9r5H0IsJ9Bscgtu8WGPQjdUf
	 he+v/6KtISPG0Zp6zbYlfNY6qcburRXKYmxapS+bwijdrsY2dzRRAthXEAZVBgaWlU
	 0yt8NF4Oc0snoPOSMy9T8m1SAkuTO4rFmK8+CsosE40MkL5j8ZlGGvnXQ2ZSjaJgeE
	 0IB1aEk2qMuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024BCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807199358.18236.1068451557119156765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a08b85c63ffaa9b936091d5f1286eb6626b264011c74ed7966c337e261485e
Date: Wed, 17 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758071993
