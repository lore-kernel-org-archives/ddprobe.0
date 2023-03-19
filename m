Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A61846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB397C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679250305;
	bh=buafo7yEes/k8iOwz8uP6zQayz5joPRjtzAnWA6H6BI=;
	h=To:Subject:From:Date:From;
	b=kmGaKjuGLexp8YtADNj6TC/Wa6Oc5ww7eLU/OzQ6WSXtnUEYgYt9vdYiacTMwJ7jt
	 YJlNZOqXRhai7aw3W+l4mNds9zLhQgflPXWR5d6SQ4uhlURGxGLLbHXRWSpBtdrwtS
	 Zmztvez4vcwdthj9pUOf36GfQaNEEvH5KUzM88M4uS0mO8P6veSwoS1o7RE/DspwoX
	 rdZ+KFlQWVMJ3z0q3HSSWyB9q4fwBZ9Yv4jUh7xXEXckNBJpWn/ABuGJxYqoK2pFVW
	 j7OFMV8/HJAb4QdInKNPWG1268FlySzT0ypZQx5BptbDkMh32pXYRskSkqPZqDWG/h
	 ZQ4yRjBt9+F+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C680DC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167925030580.5309.9492439287531857485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789a70e2a4646c29859e2fba53923ec28443ae641cfe2462f0c9cee6c8ccc4f7
Date: Sun, 19 Mar 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679250305
