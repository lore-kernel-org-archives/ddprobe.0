Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E0E156EF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGhkBydF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8109DC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704975496;
	bh=o73ieghB7OBqCUmIxT5iUSJU877rNQno23cmjzobLLk=;
	h=To:Subject:From:Date:From;
	b=IGhkBydFGzXapPBUI/cl+eggQdsa8Lq4PJMDIR+oL1a8b09p/TywnwJs+g+JW1tyD
	 qM8yI7PftAcLr9L3n0GwN/HBgZe2TPPbE4Dl696rxZm2IsdLh8wnHWYWz8YSCSBEQH
	 CEThDjsKttow8rwczP7cOgP+2X6P6lOJzfiz+e9HNqUb0dxf5SnWTG5z25IP6vr1oM
	 /Ek7uF/Z6rDPqqzXTN6xgHVBtU9oRoUh5tihoSffPb3qNmkJvm71uEDj3J3NFw3Tt8
	 peDpJNr+y14jmDLn70YFijs/vI8VjdrThAchWHj+CBtemjw7TdZDPGC3qwrWkCNxRR
	 YwHCJlWfSeI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C36C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170497549640.4910.8726338403208526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20521b2053d3a5536598687460baf0efde416266c31be96dd723d9fc8b20ba69
Date: Thu, 11 Jan 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704975496
