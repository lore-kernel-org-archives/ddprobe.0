Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10134C95
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AA1C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663328453;
	bh=kPmlapJHhltykeP9NCNHFGoBFvW3w9EBsdlLopSKDmE=;
	h=To:Subject:From:Date:From;
	b=XsI9Oqxwp9BVwAr3DedeiRiNKui7ePTHT9fli6+e5cyVkqkSUHkd+YbQJ/RrN/Iqc
	 UfPpxdfeVtEAtobDo3kV2Dt1xSj+xSjpfCa/rgUevfkJDmgnTZap3aioo6/cU9HKCQ
	 SRbR2uqeaqOv41YcLG09BS2zyUW9QWNcaB6QUnPoivb/BJD28CVZCXIWTUzivyaUEf
	 Mt4cYATSLGoZ5UxiCV9ZMX6PkUhpKGh91JpYTevmV7ft9CrgMRY9bcEFFZyD5yQcOI
	 FbZ8zQ3ww0YUzXHJ1jYxJnxLXQMpHl1wVa1V2B1SOX+ys4R2Sp9v2ygUpeLRkNI2Di
	 NK9VsFab3NCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E98C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332845333.10508.16831790038101771113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c85c5d123a3d67175c7ba5b8889b6b372d21d14bbc3e285a38540e1dc8d3f96
Date: Fri, 16 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663328453
