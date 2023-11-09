Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BA38DCB
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQhCvZ5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 952C6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699571896;
	bh=X8N+ZDMbdOjUWNHR+2ub2heyR6VUlfKEIjvEYOzXl58=;
	h=To:Subject:From:Date:From;
	b=DQhCvZ5QWDa9y6g163dINBA8EhuYY8ykyEpowrbP3NsyLaM3bna5oTc5FaErPsIjR
	 WIBZ4+YDK+Tsg6cazjx/QV0hkl7bzigc9uGUmQ3icTbkkk8t6IiNfqZ1MKF0bHwtLw
	 +aPBG3+gVa57YVoyCBmJqkw4W6/4mOfWWMU/js/k0PgFAZxy8uLZeY+BkRHGt5dBWu
	 uf4jOc7jLmBkTfJDydWun9xgxydIh142PMH+YyxIxGeKR9jr7NQv0V6IO74zZfdcYg
	 rMfjx8wxOjOUNHOUpKcEIbYKCREixW4yQTSVaEE0z5dz0AKd80r86eFty7FKt4omjI
	 XtWeM4AK2PIrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B4CC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957189647.27113.4031755311472972987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5890029576c9269b8a2737ca24a88497e794cfa19c95d54b0a0e5cffe5d8e08c
Date: Thu, 09 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699571896
