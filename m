Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B67BE5E
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741050534; cv=none; b=b6gUpdNVDNO1w9yxJY8prKMCNW+hSyxbaEUZP3nx7vZZ29uhizTZDeQvl7n+y07RLPbHwtfSB8ZIOUWzYI2B2j87AClVgIBDEqA8bhPfjMHk9uFX21PN02SCCAJyQGMpzOjjEVGwurUZlcPG96ziXt7eu+BUo1QjS0zkl85ntYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741050534; c=relaxed/simple;
	bh=6vKszXbzn4AEKAf4qZRqKgkGxR8Tvb2Cjcy6NZgz/v4=;
	h=To:Subject:From:Message-Id:Date; b=N07g8OwulfyzqOYgQ2a3UCziXTGE2inzi1AQ6N5nw7eZIlxjvCvQjPcpsXXW1Fx7jWw7nNj+uPXeS5jdbhBjZcoQBtbs2elKcP19EO44WxTA6bIHuG0p/azHJW98jwGOEptT4a/LTDRALtkBJlP9hQhFQbcSa24A5/xtkOmMqMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X77h1hgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X77h1hgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AC3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741050533;
	bh=6vKszXbzn4AEKAf4qZRqKgkGxR8Tvb2Cjcy6NZgz/v4=;
	h=To:Subject:From:Date:From;
	b=X77h1hgmR0mAIcbmAqaYmCf6Zrn0QaI3ZxvhTbqOIJzl5t8GED97LV6WgkuLOIU6V
	 9Y30nyWhhppHPtLxyxMaCJrgob8qG8A3nzlqXdS+xaiUv2Rc2MFc8LJldgFMFcWLjc
	 l7+VDRVpMgpI3LbaGC3bBFON4Vw/+ouwD+/M06gbOhO3sN/1dtaymWtT/oAfZ3ssfA
	 RK6dkQd6ruaEP8Qqor5eCy1G3WHSBgn2YfFCPE31dC/Oo1bTjcebhh9XGjGYfMJium
	 3sGLIj9FBp2H6rHcZeXw7NOU0jdWsbLl83Td9EeTvnthoubXwyTcTkxqFfHbhUTSAI
	 ypKCtB2Ce3f/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E504C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105053363.27778.3931042237311158568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af239855250862f715781829944e5f0c9af465d1ab9a33acc3746ddc87b384c3
Date: Tue, 04 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741050533
