Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E4134C6
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711452497; cv=none; b=SlQ+KifuI8ePCTRwPrASXHDdGYTB4LpfbaAQgycu/ukG3yXZ+dDJhByUQmvQRNU6/ynxCxPOjhx1rJKS0vwGXwuGrQoSCnkYeEkX5ORCrwZ1x4HDo9TgoKic3VMdsWOdrOe0DMZugkmlAJBtpHFr0ppxbvQFDNVMUraoyErSpTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711452497; c=relaxed/simple;
	bh=0OynjEwOo2itta6fK6nHmkDzwp1JbA8x61ecyvcBHRw=;
	h=To:Subject:From:Message-Id:Date; b=MSPw9P6mEuLtIQc+ek1R21sRhL2w714/P+o/x/xL0KmKJhi6VYE4/iqFb3Y+8utwtfY4BQOKaPd+q3Rac+RXfWhUi5j0tZnnuwzFl3fN60HGZ3EY9oHgIDXq6UpI9QhJ7LlynQYe6I/VxrhiBCHmHp12vG0MW2CyNEtLU0vLxuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BD+Nxs5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BD+Nxs5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921F1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711452496;
	bh=0OynjEwOo2itta6fK6nHmkDzwp1JbA8x61ecyvcBHRw=;
	h=To:Subject:From:Date:From;
	b=BD+Nxs5iWT8BP88Qcr2vi1++jjBCcmPLTBGygir4uxolZak3nJE1bVX9y3isv0Qpv
	 bjQm0B+geK1BtpdvOdfIN+6pF8FJN2jRwa+zw/9znsKJgg0v+zOu854MNs2zkArFYI
	 PncVwyzDVKyBJ6Xy+lRjrwsGULz+ZwcFyRI6VkiC8j2wRGghO8xOXMEHcO9gzuV2+x
	 /l8a9sI6O6tDT7+Y22mzBNTXIGKMPokFCRs7dzj7cjENmQQ5nWGApR9EA/V507Ow3D
	 hoW90bTjkclaItOR0xA3FBa6GylySbp0p/gxvp18IekcgquY4eT/4yLg0TnRN46raK
	 VlQt/SZna89JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C9CFC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171145249646.29647.13582785778868198630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdf3d12adc1bcab56a1636bc1dc8c4e4b85244ed3a9b68ffd08cb2ccdd7539c
Date: Tue, 26 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711452496
