Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD271878
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 22:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA82C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684017486;
	bh=SxKVbna4Xvpop4N2i9ZXdfL6YINhB+Vd5DMJ1k0XGVg=;
	h=To:Subject:From:Date:From;
	b=ilsOghus2iw06ikJappA4G+xswFY9ZHbuBflesPj1yWlNglp2O5nukKHpCdiuW4+w
	 2G+BQzMF2CshUu5GmG5xXLDyJ3MwHKe0yOykOheGzAuSDDJgBF/O7CC/zsVxfvNMhT
	 gj1/cHZ/O+cd38bMEZlVy1n6jOjketIUz1YsX7jZASWHrWnvbZpOylSFqjHmeD5SE+
	 rXJ7H4jjhkIyXeMee1PWurswIVj9nV3H3wwD65uR+W6r2FbYw/6y7Sg0h+HrKKwMCP
	 JCD7U3m/FxIv0uGpooYYsGvnojNuovzbsOOaZN2FQ/y0QFz3nb8KKJSIURDCWrlbTn
	 8ElGj+Zcop5Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCD3C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 22:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168401748582.28760.2323543375097989465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6637265022e03569fe4bcc69479ce756af4430a066a41c675f3b0ee94c371e2c
Date: Sat, 13 May 2023 22:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684017485
