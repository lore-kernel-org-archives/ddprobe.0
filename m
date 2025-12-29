Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A7B1F3BA4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767038634; cv=none; b=EzSDc7T/Nz8mMAJEuxRG3MFRnidCpPp+h/jCqR0dZeE07ufcz/juH7TbCv/637u9utKxVRpIPswzG7m0WCSJN7e0wXVhNcTMCS4jkSbUR+D/iuJCJ649fGNlDtP85IZRWlsmPJ7/IT9Y0VE+XRk2syiuFvXIaJnenxAbSYcA2Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767038634; c=relaxed/simple;
	bh=fwPzOOe9ABLRkfJqJl1SjAmYxx44kjl6XpIoRWK/h1M=;
	h=To:Subject:From:Message-Id:Date; b=WzSrI3KGf6/uUKk1VEL01Ged6c0yZw4G8QGJBbnaC2JkVMni8284XnqC73wagMPtJ7oZ8NWy4yTH6Xsc+hxI/zhzZMuhV8I5fdYIT+9LePnewdQS0Z0aKzo0w++7B7zbqMIpKn5GTBnbnAy+j+ZSM/PySrP0mEflUQGX+KMhEPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLMDyYuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLMDyYuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767038633;
	bh=fwPzOOe9ABLRkfJqJl1SjAmYxx44kjl6XpIoRWK/h1M=;
	h=To:Subject:From:Date:From;
	b=DLMDyYuKEgcF4Vb2ia2af0ieRl38KYjfRVzbmKF4QinsWX37J4xbPfMSJlLER5LNN
	 b8zG8cyj5K+LSRr7TooRpoafQr4wFkks7hiy/LwbxErIwQJKmHPmf0PwVIgl4kwr59
	 R5tgyvd0gtB1eauZqC5/msRRSB4fWNNkGt4L40h1DXXz3Jke70lLhamhjMvHpGRF4F
	 FHUNqH9ZKFYTtY89+DmGSeGcOmxSuP4EnhRuXDuax2E50ud8hJ3Rn+YUDSy9UcHLGc
	 vfI310M2nIwH8W9bZYCZEf8FxqzV7sEdYNZPa2GtzPKFM4y8ie/Rxwgd0PFL7iGJuS
	 Va2yVb6jJsHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95355E9271B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703863357.6103.5277496676812135588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde6dddfecb28543f31e1478d53899724236ae5cb724412cd7ece19a179beac0
Date: Mon, 29 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767038633
