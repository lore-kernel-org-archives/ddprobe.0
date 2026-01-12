Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0149331ED70
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768241634; cv=none; b=Il4N0Z0iSHQWkLMyXB6Wo/LnthOoeba2nksJEw6pg3Dbwyk7pU3szX4lhmEuL76CmIY/xl34b+stfdFJVkNufvGPGTAXbEtWAKlSKBH1vCZz3rYehPkvYI5DZt2aq5hCOKPUo6VDHNXvOTHJCRSN3CXHJpR7nnKbJUqWroBZzpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768241634; c=relaxed/simple;
	bh=CJMG9MqroSN5pJ6cGY+7cVYWnI5nlplqMAkn51BlOUo=;
	h=To:Subject:From:Message-Id:Date; b=kQiP+hkTy7MxwLu0WAG2NEZ71SI5wHMwC/mPk8TpFmB28xzvhiRpQEkxoMZQusqyG1KoUf9UY5hpH9k2hCN7s8m7ezlPffqiC6KCXtUaq2xtRTq+YYXnWT0nc/jqnOj4rf2Watse/Qz4uI30l7Xum9UqtYoFPTTCKVfL0sEZv3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW6PrNhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW6PrNhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5290C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768241633;
	bh=CJMG9MqroSN5pJ6cGY+7cVYWnI5nlplqMAkn51BlOUo=;
	h=To:Subject:From:Date:From;
	b=RW6PrNhWnz2Q7bgxVeq5qC200fF8nsU55UNtdWMzAMbfZHvm/7SCS0IVrK9cjsQRE
	 18cVhyz9Bdf4i/UGot3lk796H9BX137tzO6q/6iW1rFldNCfoC65F2ZjrS4tfD+fOK
	 TYinUEhN9VGXMEAsb75wT+xDwj2+uhVHjo56mqe6JfYdAZwEGkjZilSfZSvRVQezKF
	 SMMNhR/EDHIJnFNUokkzImj/0Y/WxGwUQ0VMjjWGeBj3/E9iAsqy+7Af9TF1UWYlWr
	 PtrPgJ25FFg2vkwCbP8pkBuwM7QpQo5DnbaVbCE/DsdDvhBKAt/iLpObwovO+wz8mP
	 3w9oIPXKqQ6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE3CF45C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824163358.29514.4867943463143689914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb143919fb940ac3a8c2e8f1d0dd1abba81ddad82a2a2773906b0db11e472661
Date: Mon, 12 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768241633
