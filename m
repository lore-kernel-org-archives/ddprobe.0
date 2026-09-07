Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D8C5013A6
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788793834; cv=none; b=hq1zJWZQHSmuqcKsjKyI3IyAzD1/HGkL3XWmn20DsuSVazpRInmeX4YdF6jtYekCK4L4TR6zQjl9GjHZjoXPjwHYL/JM6ASHWY/duk+a0nXBvLolJTtkFimvKlDbEw+u+t487D8HcvVCLZ9eEX0WF8W08uQURzMkMS2AoC3SmF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788793834; c=relaxed/simple;
	bh=yvY2yTIhRfS9wDkAkQ+fuK/hMVK19tStGS5i68Mi9NA=;
	h=To:Subject:From:Message-Id:Date; b=NaNxFJk0tJ4bouu84ZZ14GdJkYBjPhGjJOqipLugP2wvVATal5nXErChePtKkyy+7WZHrmqlkdREA4Vnx0l7/dX9g++5sOmYOYo7cvAzx+kfI3rtJ6QCfBVjvdPqA0vtgIGsM38OYgce7CBC1H1xvysEXi6a0g8v0H1nMrVm62o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjaQs3oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjaQs3oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7A7C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788793833;
	bh=yvY2yTIhRfS9wDkAkQ+fuK/hMVK19tStGS5i68Mi9NA=;
	h=To:Subject:From:Date:From;
	b=FjaQs3oqz0g95ybgngeAJ3wO+TKw33SNvwr4j0D49BhmExtJxNkEffYAYe6cDdEFm
	 mFgwy2fTiKAPmuzo7O0uTgfgpSrm6yGvEH8HD4RL0Lk9Xk8jDkBTrXGtMfQN5I1prO
	 8kBS+VS+rVOpsP+D8qtswVe4HK+nqcWzjTzCDjyN8f0neUMW8a91XcSNNzUlgB/cMW
	 fuYZVcBYoM07gLiULExhfSjEeNhUQcZ7o4CQ9wpPQTzLltwCbPfEoaeNmkqylXLfS9
	 cZ5uoM9IUdrTYKT0K8Wdk8c5ZsGzV9EeZGwUbKuYUzm3jdBPINggm1faEPi+Pl209+
	 onfCHoWYLKhAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99E6C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879383374.17354.4716652901031395703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8164b10bf9c17a87bba9237790fd9528266ea1c5f08415889d0012bd537ba86
Date: Mon, 07 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788793833
