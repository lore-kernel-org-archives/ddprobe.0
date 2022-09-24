Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD969194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F92C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663993253;
	bh=B4oa6TbEUSNgcCY9s00kocBG0QduKjUlIY02k+2DGvI=;
	h=To:Subject:From:Date:From;
	b=UfGlcbt1CrD0eHTPJRCmFK2Kh2/dcg2aiMf9qTWerAo9iJ5RR3nCWiQQhyhQt0Vb5
	 RokKgcLxXPB4H6uHZIHrbpdMQLK+E7EqXO4G0HejvIkfmZD+UdOLh5lWihBiC9tv6U
	 1VOTSsw5yjd04bL7SMm/9dxB/ca3ougNxBKJG925dawGoTSvcsoae0X6clbAX+9vWS
	 Npe0rjY2h24odylT7IHXf+m9RFg65QHRcl9N4SmJQkeDHNBeh30R8BRslks/clM0VU
	 GssF8yiYXcvd4uWpubAhzsbG42BfyU1sDVgjKWQj6gLoC1rwr0nUXSr7AHFNyyXsQo
	 tO/Y3gGOZEnBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C268C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399325335.29590.4545644802899070335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174fbb7db28085bc1261a2836834a9cb4f77e770b71c08de474c2fda03d2e8e8
Date: Sat, 24 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663993253
