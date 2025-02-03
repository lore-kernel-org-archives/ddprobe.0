Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94527213245
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738623955; cv=none; b=Z0fiH6t9pjgffoOF3SAF+fy4EZSpbr38fQcWwf69Gq+rS8IOdijt3RPQWuTbEcQZK1+bNuK3Ys09AI0fWEm+0riIXc95cE3cGh1/TTpYErSAM/iG3M4IiZJaDNEfSDOdoeaQkzHRGHtio/Ua3NoJuwNpes0QhhRIgosobiJ1WmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738623955; c=relaxed/simple;
	bh=LHXzC7T7QMow3OwdeeQgkDHRzHwasr/pnWxTd1Lytrs=;
	h=To:Subject:From:Message-Id:Date; b=dkb79A1kfmz+kHPyGk07OAnRA/Pw3uci6NsgCr978pY+Rmku4sowAjl8ENV7VlxYFUGi5ND6VCeUMGWYrMQp7UrkLuW5663GZWGGvqxRUEJ3DMI3q6Dnu61odrGLpwICVwK85Dzzds9WUgqQByt+RQbEG+G6IhrZf6Oot0zyXSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6OgcTVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6OgcTVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED769C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738623954;
	bh=LHXzC7T7QMow3OwdeeQgkDHRzHwasr/pnWxTd1Lytrs=;
	h=To:Subject:From:Date:From;
	b=Z6OgcTVXnlDK8mNlUJu6Lj8159MWjvpL3NL03B0uXLmotm9+v9VlbIfP7Gu3ql3gz
	 Lg4MD7v8QKRcsYAn+Fq3k7QjeO7xgpbHL7AhNOTxt/0ljqszKt2ZLi+LemECKHb+ch
	 GjSt7A5vWB3hC56VAvOAJ+qbLsIiRSmVlwPUTAzCFIwGKpoQ9zEq8v4nz1Nnvmy3/p
	 zqOM4cWsRbG0vRw5EmztZaaAP6Yua/tz2+QusxKod73p53l64RpyDG+VZb7AcjmmAv
	 opnLiUo3Fb+xgjq0QhAdq+MzPcNoIvdDdJYsZBASn9GbixpfFJ5ZOHUsZT2RK6ZK8w
	 ykG/zAoEBHSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5159C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862395366.5204.10008887285263808208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022205bf51ff1fb35fc50369b13b92c4335a4c4667f9755134e6808cd9e32045
Date: Mon, 03 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738623953
