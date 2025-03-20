Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BAA1E5B7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499594; cv=none; b=AmybP8Wv5zoWLxGqPpl2kKMKXuv7+TrvhDyXsSE0NdD4wGlBXJ4bB90lr7r01f8OTW/YGV9JOTxdjpQWXVdTTDt332cJLCj6xOxZwrVYpzr5tz4ny3s6FwteYmNjjHmZ7vbKSlLKYYX2C+lGKBdwz6LbMneLRivJUnIZyfBzEKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499594; c=relaxed/simple;
	bh=A4hDokJsP+cX8pYlNiQsLGQF/ROiuTgL9M+md8DZAAI=;
	h=To:Subject:From:Message-Id:Date; b=i5bnI7wdmTgBHJJ/uUxX3pCAU5u+wc9kwNBFddYK9/M7/IHvNP4buM6sT/x3TOgm2J0Ky3jn3+5JxOnF+ZlB2t+HKz8KlvfEbxBsdzhRlgqzgaPE3xgzzwE319kPkT+yl5+Oicumbqmwp1FhpwwKdhmFASOKmFzfTPUsiKoPGC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxA+GHEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxA+GHEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF82BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742499593;
	bh=A4hDokJsP+cX8pYlNiQsLGQF/ROiuTgL9M+md8DZAAI=;
	h=To:Subject:From:Date:From;
	b=PxA+GHEg96L9axatVGgP57g7jO1OS4uRVOYGu4WdrAICz1NkmUeZBijFT+xMzjIMc
	 Ocvu/nr9dbrAKxg416b4Rz7LezwNE1syGONg4T+RM2HkN/P2gtc8eA/Vc1GA053rBc
	 du+bV4Z32REtVzKj2BQo6cqhd1MJ6zvGt0xIC1mzecmVEiHgAV+oywVDa53GikZ42+
	 w/PJerE6gjkvDUokTzwGGLjGK88YZf5o41QbwHR6PGk9nDWACoxD0FRAQOCMHqp2ex
	 ILdWNnzg0RNgwRdqPK+LUhMuc+rA9+LF6UVvIZe92g9m5xavemxuW/vcRXivl0AFTr
	 fjFYNxnxj/Ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A001C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249959360.2087.8069374926776527698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8129a3898618a16afe3dad98b12d6e8b2d1898dfabb593b36ba05a4109d8f3
Date: Thu, 20 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742499593
