Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC493C465
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749167994; cv=none; b=QreU+/u2yflx9zIWMcrX3qXUJWeQIIj8TkTjSYtGyW4VfhExZWFtiuXtH7qYkSXTrXjOICwKTIAdLeSXv8F9ris0h9FHtmQ5sihrHNl8PQs47q89Oap/ntRJs2aYg4/QZEASmJtxy8L/fW8VUBJTu6l21UnPnRXvXhtcyoO8YeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749167994; c=relaxed/simple;
	bh=1Zl/W4t9Jv1hubyyjqtXkzY8HHS7/hi0mpVYf94T6d4=;
	h=To:Subject:From:Message-Id:Date; b=tvCtxesL5Qw1/LwwJBG9Eo9Bxn1vXZTORH0mXbPrU83L1+YMvBemhh8nbsYDq0aC4vp/4lmzR5qNHqJ3ptjRSQVhDj0sAp7r8tQz+RZ8tk4UZE58FAgPlsBaN84FVYu8r4a6J/lXLul7oPAqEdLwVZKngt4ceADVh6sjxJ2TP7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwJpx9Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwJpx9Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749167993;
	bh=1Zl/W4t9Jv1hubyyjqtXkzY8HHS7/hi0mpVYf94T6d4=;
	h=To:Subject:From:Date:From;
	b=mwJpx9LgobvdaZydYshfNMdij15QY07sWA/O3NVtZkl+e4kGeje9gtn7L+muZaynr
	 92JczRLTf7V3i6xdfig/ldy3XdQfqRqKt4zHSzWoxVF7KltjSF+EWb24AlE+KsDexg
	 f0evkYH18sWHrw2Bqv6ZrZpVqy7lZ5d+uG+yEyILXRqtL4cbFp9POTXW9Pn0A31Ntr
	 L5Hz7vd3zB5SlrbPSjy9XJe42Hd4D1K2+KBpHZ8wgMu1bXipgAAjAAClpySTKBbeoU
	 mOjlOTrH49bHI0SoEkOm7GLNe0q8gS4nK1bz90ZvIl+LvMe9HRQCYWgQIPoTfpcOyo
	 Q5NXcUT85b8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D9C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916799357.9806.2282233390760092748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cd41d141fee6de6a674be2d6dcb3ce662d956a8205336f55bb2f0b12c193928
Date: Thu, 05 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749167993
