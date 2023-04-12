Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFAAA935
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:35:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC594C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681335305;
	bh=2lCAkrd5NoRLLleaJ9QsOZTyfQ/ynh87Yg9O782B/0I=;
	h=To:Subject:From:Date:From;
	b=FZSWCKWigVN5+RezgoS40FejXmks74DWvSCsFV3KS8SImOAE/aNwLYnJbJARpZlFy
	 X47Xyq8fHjNzslJ7QQj8cyYsqbyBLrrNzBcRIVkBI4ypRlQtx2F+pljOTR6Z5Wiok+
	 aeYhgE561avZNNtwoHKEIwKGNjCvBF8nxsbSIcwzNX2y2NYllJ/LQDuh97G+WL2L7i
	 8ranWJD3hhhZZpHYG8mo2KshXRC39nCfjYPJxAL5Bfpk000yifyPc5B6NO2H1wpw3T
	 L5m6OzBcDjHlAjV4D8NCeT87RckPDKeZhzONbxbFkxlXf2u0+DShlwpbmhkqL59BeE
	 AdANRN52ak/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B231AC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168133530572.14462.9967359739469345640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299ce123b4a24c358ba3d55cf0e42f013090c50e659146010ea184183b49c622
Date: Wed, 12 Apr 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681335305
