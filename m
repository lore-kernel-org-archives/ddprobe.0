Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBA763AB
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 17:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8709C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694193848;
	bh=QhViVIiGMBR5irl67xTBOdJ6aaj2gNEmMj5GkvTLTmU=;
	h=To:Subject:From:Date:From;
	b=JdnpQ8WuvkhgwKTaZNRTAPywPdZqmJn8381QALHReCE/rr9vDl7v9zbqAr8DfSryh
	 8wyYNPrpWbq6ZXhFjaN5nml8zWf26wJQYBqFSaPUVl62Fx/d/QlrQGCDmev5F/hztn
	 4Z8i7XbVF1ElayF7Wzj1imyXXwwgvQ05ddVRgMNnOQxaYhtSMoBu10ujEk3Eg4ZriL
	 ZEuiuB78q71BSEX8xdZH2nZqueTlVivxlxnKLGnz5pCullHih5QJn+AP1WY1ldAZNI
	 Iti66IxfyyNMtKLqfz6nvV5ZklgO6/84gyOjSkmFxabevXDX9QPts6Gjk087JeVj1B
	 n7Ng50LgXbRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB244EEB561
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169419384869.15110.2337228505828904944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c860ae4cdbc1163fd591167f3d7462150859196ad408d3249866982f0b689060
Date: Fri, 08 Sep 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694193848
