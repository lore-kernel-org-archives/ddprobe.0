Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495B6C2E0
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735707354; cv=none; b=cUgi024tDh120nm6/vq1/rpyNL3RNC9CJMnYHdfkD99Ewu5uy3nhU3mh2XNGqSTjISVWWTAfICeB+Ncub4y27cjvy7TFhiN1jm35SwsrgLR6/pTb6KvdEP2/th4GBOZdcKIFhT6hvdOX8UZnj0NvImi5NZqPKNiTinzpNUjPTiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735707354; c=relaxed/simple;
	bh=L4JI4LWnQiJ2PXC0eK98nmwrRuaNPxQQG47moI2H1Ro=;
	h=To:Subject:From:Message-Id:Date; b=q3A0HxS1q8HuL+M7+gWUZDSUn2akpo+9xnoXOT5jOwAmrKlEEzTfvlFVk2euhHV3YsckF2RqY86CKCqLJP8qQEi9AM1rpPRe+MCiKlosLHM1Yb5qbKzU250cGcY8hWtnVq2/mhRIhquPM0X4XJNs/0ax9rVMXM+mTWQjXu29RoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0mNshWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0mNshWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5595C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735707353;
	bh=L4JI4LWnQiJ2PXC0eK98nmwrRuaNPxQQG47moI2H1Ro=;
	h=To:Subject:From:Date:From;
	b=o0mNshWJs+4rWu2EGOuKAu9Saq+AB7lyi6Xxp6gYocT1CEXAYcvOTc7vGV88qOg5p
	 ToBviWeNB2NQzplzJvL5MLN+KCyFMBnJrTsacchUTAotlu+W4yDYHXzC+MM8kqgYLm
	 kS/AjD252tUloFIIp9RqWlTlXeHoRgCAW0q60yAwO2hjPVw4iix7Y0Ngowjm3pAx+U
	 MeNqI7r4Ivj7RsF6+UR4evcrBkmm1Jf+41/cqkp8pnXim/05C1FCDr1Jw0DySvuCul
	 fJCfXaHTQnSrcS7DkbwqaiQTIg4/MYGQCgKH7odo55reCr3fn5x2q77rABLEm/y20P
	 wq4ZTfUXRafpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7EEE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570735360.10024.10825372142866881277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b3d42b6dd07e704c379689592898e2e9d42021d55b3b1128b9d60037e915db
Date: Wed, 01 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735707353
