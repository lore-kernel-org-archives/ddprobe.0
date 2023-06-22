Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A84013ADF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3448C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687422188;
	bh=TGakJbfpMJgKstsy/Y0oNbaXBr+qUhQW3naZ9IX44tE=;
	h=To:Subject:From:Date:From;
	b=AIWKWZu3b9o9F+XNIE0OvphsLc8WHshh4JLlCv2CeI9nmMMC++FNcZoSOk8C52pTu
	 vsCVQIXIqMfy1qlsRvSSOu3sUoO5Jjgpd0PNoHsXLRFznr52QUos/Et+tPH3GIqHZ+
	 JSXiNkRkdkDHE3Cj2ocrxVcQ0GVSY7VGoYI03sNn7FQv6ucjEYRw+zopS1I3j2eK2r
	 d97EVTdpbjSiCaUd6WVRi6F6FPGkE/FBCG+KSjUTP7/JQqCehtJ5hKYfvwr0LbgQzn
	 RRWQydPWn48hsaJtJDZSsnCgzlEesjz8N1WgIisXDETiQqgVOJEFPKVhDhPuDVWfCc
	 1GHmK1BDjcEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F0DEB64DB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168742218866.16196.11211253106635305246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7c3774d19ffb6917f2f9ac2b5253d1e7e85fe17bae991be6ad7df66bc65409
Date: Thu, 22 Jun 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687422188
