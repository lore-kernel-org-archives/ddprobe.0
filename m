Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFCC624
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD871C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680665825;
	bh=VhjDw7ReO06GXFO+x9tzFb0AjbS6hFb3ZZYOOzogwIU=;
	h=To:Subject:From:Date:From;
	b=GOI2szvEc5lGf9J2KuZrhpHt2SlUelYBYwjw2sV0mrAD1+zEW0iMJY71ufHvsLIR6
	 2y88biJ6rqMPu2u0A1smahsPcI0CLCIgxOyG0o0wUy8GswfJ0wbRmrscj/K+sACq8W
	 Q/EqGQuD3krqMuNWZHu3UTqFbhD0H/qnySGwV9lQoe1JHZaubPGoeT3M+Wxtd26RHx
	 Xseut5Gk9JkKDdqmTNzZXtYgDfGdzFgtOPDNhIuf/6ojR/AuaKIyHSUO2doycIYv2K
	 x0A1+f+YjB+pOmkuhDv8vawp431fqUZcByy3Duk4z7CsjSvHfy+2usJ88AITSQJP7I
	 qaP+XzPo76Maw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE965C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066582577.1510.1045589077797587609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6700071ac6cbb0d4d10848d519d018396b1e689917cc477f82b0d5b6bef930
Date: Wed, 05 Apr 2023 03:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680665825
