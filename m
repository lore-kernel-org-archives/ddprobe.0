Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD633234
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F632C433F2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671112887;
	bh=gDHz/ysvuqcZ3oJh6ydhcI3MwNjlHy5JOBjfLQfdnS4=;
	h=To:Subject:From:Date:From;
	b=RfVBA8xFkN88UHL7ZynGW4XFo50rzY67hfCalYUVfshy8vqUsmvWov3pDclnaCiAm
	 b+q2QLED5Jw9b2VJskdtp0pRE0eHaCBtnBWELH946TaCqU3t2u4XVdxM6oSVniWEK7
	 8VUtIK2RWKshyxDlSHHrD857YZOjvVzEUWvcVt68ug+Rqm8gSOF9CtYNM+GIYU3b7h
	 0cI+OqIWGIzjlvfcDkfU5zmgQ53xBnwvFDR0FRYnkh2WmMEpX8xvNc8DnqRwiGxu0V
	 yCtqjgma+ZVQXn0yMs8ykG8lz4H7rFlOuJCMrtELekFo8qcoH5o2aaRZe3mDU3QOwh
	 CRQYXeUpYld4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65510C2D0CC
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167111288740.4243.9481825955587177814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c393651e5a1ed85fc6174b122efc3c34d34d3593d971e48166b04b5c9b5306
Date: Thu, 15 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671112887
