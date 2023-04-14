Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6407F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7FD5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681459325;
	bh=bt7zxnML9FOHvv0ig8GzNNqRAMROmjJSvS6Uqodoqj4=;
	h=To:Subject:From:Date:From;
	b=DO+hw5hD0mSdhTeShpLQ6mihO/7bMbJ1gvkQW2EhT8/9bH8gdcbFZOA/n0cdRkfX3
	 2hADavuU6PFVOhSFvns6ebJDPzugj0aHGnaubUs8RtdXRsRHnCgtmhFLzKZyOlrd+u
	 XFRF6KRcrZmSBv3sVQjI7Q6epo0bIeWT4Ag1hny8vTSx5habKIcF+BxJm4DwPyOBtK
	 HlB1ilK/Gisnf7XizthyKlanDXoVQgvPNZhsTx9ZGlp4ectzrLzw5azs3TVIOtavTE
	 rWG5ri3CEqLSv7gzz4Y21ojrbNLn1K/Y8aVLFqwVnYWp9V5H+vQhkbIcO6J7jdNMz/
	 afdYUittCeKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15AAC77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168145932578.26636.791440433770767119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4acf195322c8d4bbc2c760f000b9e664846491b556c6bea930bf18be32add2
Date: Fri, 14 Apr 2023 08:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681459325
