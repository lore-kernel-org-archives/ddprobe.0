Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF573009F6
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771416894; cv=none; b=l1lN7ZJcARtk00UICC3c+1BrwhMzvshGEMHLwkT+SlH+Qrie8MmAdI35jQxmKX0ezbLW8kEjBivd7kaffODn17vLlCk4fViKu0WGdncymkC+2d22MmfIVuMentoSKk0HhGPXOhHLS5lp8c/ODeWOv25iA1AmSYmvLtg13C0VbOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771416894; c=relaxed/simple;
	bh=iGTUB7NX2hDAk8U+OEZa7QguBQ9vTDnmKCKkqW4oe9M=;
	h=To:Subject:From:Message-Id:Date; b=IxuQJ1VGCoYpn9ll7lxwqYGs7vHcZhq5z2T8AYpRguwx1m3oHvoD7ZPtFyT2a/lvRIainKj/DUEWGHJtU1K0syD3oF67+RyEtu+R1xJJX8S3LlvsZwn/mUYY3cJuH/xhhl97jnqm2ZFLBk+hx2UpPkjPZZU5zmGcmQ0vvLlD7kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kb7IrBIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kb7IrBIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F968C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771416893;
	bh=iGTUB7NX2hDAk8U+OEZa7QguBQ9vTDnmKCKkqW4oe9M=;
	h=To:Subject:From:Date:From;
	b=kb7IrBIhlOanV50nf+EHEHPOGB9GCN7FOQBCPPG0nB4bldfaIMi4h9NWfe/D8XBMz
	 EnTvj6wfHM41JEjLxkI8hZ4HY1bOZKWI/v9EWplKnLH0T2uGdlROeEHT3zpYLRe5xv
	 IC5uJpRYJfAz5LYvctKIlHeBInUGMZC+ZWlzlm4tNDHxM/4Ifr5IWcjfIoWxayLTAi
	 qAP9VWNYkhmrqObsl/nyqjC+6CgLEEv46DQDqcF1LayTvMg0KS6nwo8oJUbzfhDda1
	 76+BuuCMGWJ3Gs01lGyw9/n1n2lNi+VI5OCqjmkTjWY3NBvfZTYdcIl4LeUadFZ2V8
	 7x6yhoM3AlyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4FE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141689358.21714.10294594274017788815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7388e5ff0f285c663099a1f34760f200f8e7104437f0812a2ecda71f7d4791e
Date: Wed, 18 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771416893
