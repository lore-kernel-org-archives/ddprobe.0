Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D98329B3
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2B5C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690900328;
	bh=w/cBdQMKZyDTDd3HR6eE4Ers3UaLSqVImlxN2dlu9i0=;
	h=To:Subject:From:Date:From;
	b=XFYP/nQxwsBdy3yqt0N7zKvEgBVNqfhjbnumd8u9BeLbUIHkuR5JplYJR+xkMZa6a
	 dpk0lI8DbXXvI/xT0V0mrsva6Wa0F5G3YqImcw6L7KWuTgkWYK/VUduTiD3SIFXM3N
	 DoS3O7ZpG8kDACZUYITXUkuNiy9DBhGyNWtwyJFr+P+w5EzKr7b7J4TdieKiUCqEAb
	 pimjB/erOA1AxTL2FiGhtVEjShCkXstRN2UIJdkbEIUHVBByiVOKZwocISKMJPTF94
	 rXjvw0cFZ9/+lNzp8eV3nzZ4egg41PfDAWPAPDnTv94U2yDtm0iuJ2mT7NxHx+PENw
	 kobx2QA6IBnbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C15C001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090032871.15092.9121867260838091279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6347c2c4654baff91e2d6bdd3635d45be96b2303a44f048dad4c9afd9385b2
Date: Tue, 01 Aug 2023 14:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690900328
