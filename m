Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6658F2139C9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785580834; cv=none; b=jni5IbZkIt5WzgFCHB0tOuqUEl0xHxODpewCWpazi2/U7zDCGB0+rFMK52dwWwk/biordkMHL91bdh3owY2pP3PMuH9OJlI4R2i6MR2RWx+MW/EstbwmRpwZrwVElltCp5Q4kjrBeMsicO5lFrQu+oPM06VNLtarUxoD4LIY/BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785580834; c=relaxed/simple;
	bh=RZU6jjAeLpbsEcuSrzj/FxpC20ytcWq+7BUc/qcK+h8=;
	h=To:Subject:From:Message-Id:Date; b=blOqF36qIOR3S0W5ZqHtl9pRpklO/VJVzpJ4PxqzcBYieF734LULmDjhIc1lWMNlHw6yPM2asFTF6ga9EraGL1aybe/xnUw338nXW6aYcse/8q6YW64RVGQA6LO+YDD6GKIgichGfpIfBH5RQ0pKdNevDGMZogBuSqof61+sEZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE9Qxc+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE9Qxc+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B18C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785580833;
	bh=RZU6jjAeLpbsEcuSrzj/FxpC20ytcWq+7BUc/qcK+h8=;
	h=To:Subject:From:Date:From;
	b=XE9Qxc+Mtor1lWnSOSv+uCQ3gqFljCoe6+7UKq1bN8y5ajeI/mJ3esOm3qAGtp1aN
	 ybi9EZe0mXpXMjMUQi3UlRw9mQqzpLnvJsYINcZ6pvZ1gfOqo0EYKxHSdIMqzhjRm/
	 5K5rxJdw5jtB/YrZhC32BbHGra5WRVWo8gNlUCBvnjySCYYc7a0nGQJwWw3akoE/mm
	 dolYqq+QPK+v0bQZsXqxXglOH3dFADZwXea2uA28x+5kw7BxgDSL2QudTbedBuMipw
	 0swg6knoQAWtpaPd/RkIVNNCKn+76psJWFd06bMV9anmnJqYWg+RXtN6KCZh2xXxbF
	 5QegnS2K32eLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B8AC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558083372.645.16817827198537774510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6407b576addec4537ae1d695c18a6e7b9b00ea5f219885482273a4e431b86b19
Date: Sat, 01 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785580833
