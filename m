Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A9E1867
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7574AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668494454;
	bh=OwGQDft7cQn5dfXbtQFZbcHZWV2o1HG0PhqE+JYqomg=;
	h=To:Subject:From:Date:From;
	b=OnbsSp91p3EcLULbfOeAootjHBwubqevJgnYj7GnnZzVFNRWRPsPTv5GwsD6u9eox
	 tcFVyEBqUnYqrEv77uT/URApCOyvjERhrVfXEAr+2TdwY0umr9YwjAKueuv8CXSS/c
	 uydpeg26EAZ7bYOaZtG0N+PnPstizpYEkxhVw6lEDyrhmuamDvg711SHwO4tA+C+Xq
	 CZDLh8a+ZYMxOktTW4of5lIuiE4KvpgKRJBCC8Qx87PmFOPDDgQQInubAsWQ1Rz8KB
	 hkW7smEwPlqyYKhsjhWFJh5nowE+y5HsN7F/oaKMo1qX+nY93n2Pe15XJuLvHC0o2x
	 M/J0wVGWWv/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58103C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849445435.22966.6940332655078555349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e820fd63123b57a94614fe9761652d2bc36fed150333e4f2440dd57ab06a41c
Date: Tue, 15 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668494454
