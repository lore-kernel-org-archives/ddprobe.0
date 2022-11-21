Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7D179C3
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F70C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669061454;
	bh=H2TSHQSsuzNeiI8Ml/5Hfwl6fPob/QuMsp7XS5EsHgw=;
	h=To:Subject:From:Date:From;
	b=GoncqWa4pMDquAxTKrEqvsOXgSlvHrwCBCvxf7PqNdExhnOKn2OH/QM8yTqMuy6lN
	 MQdyziwSft3iXZrg3o6bplXNznkmZC8gdQszAAZpOvH0ePtm0RztMynoY4/ILE6TDl
	 eWk7UhqV9TezIdS5BIMYNX82mJy2FRphaEdk4YtO1GcSDNWWcx9gMNM0bnBYbrk0ja
	 064QOu/aToGtFBFhAfugf/2Lje+fSEQeTrrBzND+eaztN1H3Lz/7w0xX/d1ZfCOQcU
	 OA7ZT4yBGrVOdnvQ4OquCPxmf+vGoIQnA62PQETyaJETcndP16npUb42Ir+M+0qq1X
	 1HLxdsXuj+Xqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB2EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906145431.26984.13680052843041564583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c751ad16d23042435a60acc246db050ed40bc5d142121b56152f610385e412d
Date: Mon, 21 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669061454
