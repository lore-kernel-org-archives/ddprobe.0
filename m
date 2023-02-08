Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D739473
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7BCC433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675888265;
	bh=sdWD2iYbJrBNZXeo8zmlQLcPx4UfeFjpJg+Jvy9487I=;
	h=To:Subject:From:Date:From;
	b=ZFmOuPeOfYowNeLeEqhrW79myhotHMEyk+gJ7Nu0OmMPjsb5p7wKpVucfqEWgfvjp
	 QtE24V1OWXL+wSdf5Mr+gtBPb81wrYff+g3Y8BIGl4bKk4wdQ8uoyXvypALfbW/eMY
	 u5V/yif5vuTtNWH9zc960hKLkInmBWUZaBSfBdXttfwbLiTGhnlTgPVFJ03mmko6Gl
	 OP8MSSW3eFXLEDWw4flAjTx0fqCoVwIyHI1GFofXbHyw9PftpZLJVm1GAabGmhJ6AD
	 aguVRDMWDUHAxYNF2E9tutkRjKRfaSrO9BpS8hh/qlla3FRMjt+hsqRQz2wekO5yvj
	 stGJyR6U/qQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99C1C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167588826575.32239.10963088007385292906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a38c0289ac96984c2bee8139878bc335076f8a150db91a778303636703066f
Date: Wed, 08 Feb 2023 20:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675888265
