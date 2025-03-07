Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC961D9A66
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741391334; cv=none; b=O0d/tkBxaZgyc4ZBmhrDMIY+L95bOnF0MGy7P1LA+EJykjUoNePi4BpWYMnfUy+mHUDojDF+Uq9itTNMHcpNBEQVCWhY3RNlSLtJwHisGwzblzUCmJHxJuTsYIv+NKC44Fex8+ch0oMGGkNjso5dks1rcTw2vRGBFH7CE3gdQqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741391334; c=relaxed/simple;
	bh=zNe08saIqfB9ZP5ge19scBW3pvYm/gLDrWJQyr6YSMo=;
	h=To:Subject:From:Message-Id:Date; b=JACH9Yzl21eDzTYk37Lc0fcegmJX9MHT58zuCf0VHMYDdUjRbBKzy24wDfssDNF3fCs9q5tMWvBQdIwSj+VLBj56jJ22TSEuILl+K++/PzY4OvK4cmASK8XP2ihp9mMXVR8g8/Pz6qxBmcvU4c+Oq9lK8YWJXL5XrqHggG2XW44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA48qBPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA48qBPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C1FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741391333;
	bh=zNe08saIqfB9ZP5ge19scBW3pvYm/gLDrWJQyr6YSMo=;
	h=To:Subject:From:Date:From;
	b=VA48qBPa08qldniYk+Ekp8J7/iq7vsdWLQS1zlBZiaMvW6VV9E4d+3ztzifaFsw/J
	 SMebU0iLS1T9fQpAT0OhH7iqLnjxq/pPwAdmhvM+jTiMnU1ZQtOsDKdilOQ5z7n/oQ
	 PvJEjI3G7o0MDUNipKEqS4mXf3Dk38Dr2kznpZTkzsKUbh1vp3FXIXHa7bSpDCS1x1
	 NVp6xyqcFG+LRPQAbYiIYgFRRoZHAjgBHMgYnnolDCvrJDMs7O0jM6ScjN1Wk3z02g
	 CYDLPefvkecmZjNn6f0BVMBL9jN32tEgy3QsIk0OeC+cYccM8iJ3D33gFudPsXPkrd
	 dx3Q8UhzY+HkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D82AC282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139133363.24221.4749024018898745256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8201b4474a1cd1a17fdcd1ce41d6a986b644335068e014bd71b33d30084282
Date: Fri, 07 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741391333
