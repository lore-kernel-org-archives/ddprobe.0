Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ABA324B22
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779555754; cv=none; b=EFcWDjbnbIuqwxU2j2B/wxfnp/S48Nfow2Qbr2ig5O/TdFmp9W9pIJZto7sMdKrTWVugPjp6ZSf+5tctEmRQG23/BwUM/j3xGREv8fmVgZCnv7Ht3byWMNhBupua7i0mq6GpH6vfouN8oMr+I1wvU8aRFPjXvT4gkjCWk/7jZ78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779555754; c=relaxed/simple;
	bh=U+5puaWLbluZG+NZydIJfW1AOaT7406JVo3SWp+jqUk=;
	h=To:Subject:From:Message-Id:Date; b=uu3/N0oIX5qCRqBZg+biwhtkWrx+YdimDF2eyjpyJI/0d5LQYIxmqfFX2ExpdFwPk9a+Nnq4iC1NUeiJsbK0oy3Op7VuoaysXBk8i4uob6I5/hcoza8pr6/JjNULuxNyI3U5P3NEmwXg1CBLpZdmuv+7C7ijhynzSCuviSQyrEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6pe8BDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6pe8BDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76CFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779555753;
	bh=U+5puaWLbluZG+NZydIJfW1AOaT7406JVo3SWp+jqUk=;
	h=To:Subject:From:Date:From;
	b=U6pe8BDhJ3oHXjSQJHx6HSxww0JZKPeIVG8YZPc7D2cKFsrJxZTtzKaYMOaSHI6we
	 Ue+M8pHO6pUFexxA4zpPWAaSCu8wfFo8Zv/kiM5L223nsKA6XzUokJXuIVzB3+ZB/t
	 VzDBR0fCYZmZtDc0x3ELXSCZUlx8euBOnIWFgVNpTC/9hCn5qDI/HpKm1rugzs3UVO
	 uVSO4z27iW79cHiEyKyAnCQIYGwARNBfEkrg1VyJalO04SoWfX9FJQqqflcouJiBgT
	 mNJ784GphchN5aLdXzOJp4Ni3DVLIH53YGPXZUQiZQtweNwjV8FYukt6SRyvgtL7yT
	 QLrnOJkfDBhrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F4CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955575368.10168.14789469553932197334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc9916742d0e08ef7b6e149f3952b6619eba372019d6be50346caa039398849
Date: Sat, 23 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779555753
