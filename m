Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD99636
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA137C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685408525;
	bh=qDeTNAt39OickoeHmcfRbikFy3m55btSZhwuyyvX9fU=;
	h=To:Subject:From:Date:From;
	b=I7oN0nvyeu5AM+Jpz0imsOMtQhqyqyHgcaduSBGK7SpFxULD25jbx6KfgGn72opLY
	 IRYIl1CzrYoRDEC3VXU3NvuNymVIGcoAhIrJ1WWtz0jskCuAUVYx9UmIxAAU4Zsjy2
	 4BqsOk4tjqSgFIWjghQIlDJJpseSfx4RwkgtXhoysve7TAxZdZJycEguyQiraMxYxK
	 I8eyFrJl33QMlZ26MGTbIJZQyRoYNAML5Bd5Iz6pBslWvbhVZqmAZbEnNmT9bMLfu4
	 ry6+82BoO83XgSa92Iy05YfGgbU76HXlT0lk9HQAK0OCsTvFCzCri2lcaBF/DjxJOh
	 POPgtO3cDgq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD82FC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 01:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168540852575.7923.2557397830755677667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de727459d8dd7b3986eabb9c2881775a41f462b2679b817258c725c5d50df23a
Date: Tue, 30 May 2023 01:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685408525
