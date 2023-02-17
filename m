Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421D8946A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 20:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE2FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 20:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676667305;
	bh=xj4HIrDMWeXBvLRFXQBvkuz5N+t/wVGrFYWwNF7n774=;
	h=To:Subject:From:Date:From;
	b=HGZE5x1hstdb7TnHFE5ZOx8460zm7Q3Bxh952qnOddbwi+GahWftJxHgRaEdKznGa
	 nwzMnjY4Vkb/n6RrjDaVoBdXRHfOBCtryH3bOZfnDnPMbsx9pQTm/qPHm0fWzZSS/c
	 XWp6lh1iaY+x3feXCWv1f2W6C0AUwCNinv8tNytFVGgLH1giuFCmDJcACW+PyFdkO9
	 UEXvhNwQj0UdVym5zrj5paXKYs5qZ3gz1/z9SNnhh6LezA34WBWEjGCaKOqenUsURC
	 l+F4YTMxpP8tCLcy/Z0goX4YdJo0UCT6q5OqH8DnVUtYKolyiRFM7addTJNlqKZH05
	 FXSmJliAQ4v/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F6DC636D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 20:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167666730575.17545.8702163992550469435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbfd419df495b6916834d3b51c5f58e118765a22f138086fce82b054343bc8f
Date: Fri, 17 Feb 2023 20:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676667305
