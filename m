Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE28C33E0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84091C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661441452;
	bh=O7TzySZUYGOuf3+fIm/u81j/5On73TPHJlwiC/f4wPw=;
	h=To:Subject:From:Date:From;
	b=CgnvBwEzcSgY9jcxpuLDBW6wEVN7XGV54CxbaX7p1pQjPPWl48F8gUL/4ijU5vSQy
	 rllerfgeJS2HD7xfZF6PQn2rRgGT6E6dHGCUWzioiVkAlr4WF+zs7TSKpdWPiYd26Z
	 AbMUCHIObOyzqZ0Zmh/To4+1YN0F4+YZ4hiabJ9vRNcOQPRNXlXAF+1B5PH0R2iDY3
	 FydVV8C53ovaqGbIaEvRZwNL3QwHE0y60QhLud4dFbAnadnqh0fSaR/Q4J3rNdBr9G
	 IQtDU1JvgnWZ/J5N2OynhwwwkVnhid9G60i+NLOANPG8+Cargrh7iZxrkaZNfzS/4g
	 fyK7Wi7EfjBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646D1C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144145239.6423.9956739405899867160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a06ea249c4b4b1c8593f8cc0c609bb5973e20269e8b800b628eabebf32d4ae
Date: Thu, 25 Aug 2022 15:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661441452
