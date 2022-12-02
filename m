Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC95A7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2EFC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669979454;
	bh=cdaCXr3cfehyZYYAmUX+5BXCCRztm4rilEgysiwwGQQ=;
	h=To:Subject:From:Date:From;
	b=LabEQ5X5u1LM3BVihQoCV9YWWoQLSsc15bU9JVacFpSTZ3ScJomyBH1NwBAvLD1pf
	 eFnTXRLwc5LXbSw5/D+EOq8Czyw0n3hxYTKisLdiAqm+Ntx4csSm+ot0VCJh/JDsvP
	 gCARzWalNum/CCLsIc57FbZLs0YWb2gzqJluwBnKqkvto0YnGxBQLx7MzbcwPL/bGa
	 aOa3KUOlusKlxngo+yqHLmxcQ6kXVbx3bRiyP+iqA2zNtBlRRjuZx7fmTk0m7nHkLF
	 2z3rFkBPz2nLtpne+rMVDU2XfjKswKZhAyuG/MsR2+74Dq4F1gzBX4gNGuL8dSKUOb
	 WayYh8ezeTKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E52C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997945432.8084.17311580246949092871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419c82bd580b4d13f7f7a0cce8a5db58af269ab0426070146957f6f0dac95644
Date: Fri, 02 Dec 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669979454
