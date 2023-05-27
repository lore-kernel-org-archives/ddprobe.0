Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5FF134C1
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 17:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD187C4339B
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 17:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685209745;
	bh=JjB8iYvsdOQ1ceHy40ADXL2ZWvrDoP6JZjvG15kliyg=;
	h=To:Subject:From:Date:From;
	b=k/9kzPcipZLGNNupfvE9BgjT3zsyezQfowUZwi/ppSJ3+Pslkr4qVgySGR5kR3OA5
	 wD2nddcXxV1jEJAV6Ie+V43+VHY69jZugrYjNd4UBe7AxBOIOjDMMfQHoQsqfVhgnI
	 9RcievE0RxTNoD8tIuU8UozXuFkyxme0LDgNJD3eawyhAep+HAu7DsZkl2xyJpRgAW
	 XPwYmWlbgHswQrbgUdjEfHDUoh+ltnHPqIY82WH/jaKkY7TFz7UhLLnegTTL21GQrF
	 7jxA0iKaGjFQMPNqh7hQtYAALfp+N+9czW1F0wTn0jWoaMccH90Ch2GrRfK7mB1nWy
	 xpOxu7YF8x7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44A4C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 17:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168520974575.7100.10087258718796534510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d93e649c9a2a7cf697e31245a7284eff3de21a5a01e017cf5428e4ce5af140
Date: Sat, 27 May 2023 17:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685209745
