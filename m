Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA8C7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7131FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663936253;
	bh=g0APXXAwLeYg/cq1XzmIWxZ4l2yygpidkzTu1V4I8lw=;
	h=To:Subject:From:Date:From;
	b=U+VyhAwWnU11NuI9pBL6ng0Tjmls/vgu2//nKH3nIfA/2eJPlYZiq1tU/o+v9zMIf
	 ZQwgR8XaeNrdsx3obiwL5lLg2M3ZZHAoDwfDTJyMD1ywCuq7ZSwUv4LCx/JOJXk9Dz
	 pLGLHUQty3muw2mGWfISAuN16lsiSZAWwMLc7BDgHP4IysCyReb6vb+Kn07SC3FU/I
	 ucnrDJnJ7MuDsE7Kb0goPi1813AyD5kci/vZHVrj1Mt6yM5fc/5NSz+ussPcYDJzSs
	 Jti3l2lZBv5chdS8/NZ2RnBqAjL8N8k4WZJi+s7ekI9B63m2lN2OicwrLau621cHfK
	 g2Cy+9241TBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B76C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393625335.1920.1709966719730530099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd316f4c33a498063c9089857ed6b651c36080affd87481d230ca0c8e4fdf3b
Date: Fri, 23 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663936253
