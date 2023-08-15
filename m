Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C423CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C396EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692088988;
	bh=ElUQ6d6/ag2vOkUVwCEhAn3TzgSaD2rGE+PS7klwWdU=;
	h=To:Subject:From:Date:From;
	b=McOTnOHBuRMMYOrcNtuo4zFAvSVLRWmOQ5HV4vKUSZA/PUFxFS0ekIhdwE8C6PBwn
	 kk4MGvonKq7EpWXQ86t4bspvFagXW0+Dh9t0mMfGVv4YLP8c604Edmrnzouz0T0dMP
	 xVOVCY2Iv1deEgSzTMNK6HBTbj2lo9UzeKwIHxmo/y5ifjDfVKZrFp8a9mcX6eA+LW
	 h8CbK0/Jd9UgGUU9tKXUtFN+Ikm7tkNBwCods5inVZLNxRtxRZP3VCT+lW9GQNpX3G
	 kTTqspK54kyQdDg7dFOOxgFNqJxzapFyeAm6qi1VvID+lOJh2xYk9CyimBXHTfH/tt
	 f2SpugdDZERYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C6C04A6A
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169208898869.14053.14443540002748413325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e3e3329e7af631c1b8e4735d04cb1ce60a26574a6bf9b4632ca8cd8f4b5cc4
Date: Tue, 15 Aug 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692088988
