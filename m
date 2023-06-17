Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7047C111A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF050C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687040408;
	bh=xngDfWMzjGT1hH9Y7k1wmTIoItTwYXPCQHUIazuuPUA=;
	h=To:Subject:From:Date:From;
	b=RN9Y41YUwkTd4S3CZOk59jcOvcGyvI6s1J8ir2g3bEa3z30MJQaZLjZkGITgnWVCw
	 N6i9MPsw6jgUobXuOL5WuwHXDjRZEnYIcPCIyGhagys4GWHgB9i/ks82FoMgOFgt/+
	 KttgJHsm8Vo0FhIAjVQ01k47Qw6AgWvmksWgB7Nbv4yANl5giDkK+rdFdayApXbas2
	 4ZrSgA7WRCB2mbZxV9kpvy4TYfjrhwx3YNHrJ9aJ75o0n6veHzqLF7R8dtv3ry5CF+
	 XyrlS+u7Oj4sKTeEkviXdqs1+/90rM4/7dImoo7OXq+1Le0wqNgkNh1LlH2RKaWh7S
	 lzQt1guWfFMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7970EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704040866.2476.15160143581050816778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edc8111d3335bedeea97c5ca77c3f10d48ede47067e727a3f63d767aa352658
Date: Sat, 17 Jun 2023 22:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687040408
