Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E947C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706A2C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663727453;
	bh=2phk5UYYTpqPNIAhlbsZR68M+EOek/WH+EY2n4MedIU=;
	h=To:Subject:From:Date:From;
	b=mT8XfQT5VWn4BgD7gF8uMCqsWJ5W9HbWtPrhXLAxUHBk+/zJvKvy73utl5atkQXOR
	 WJdVi0iVlNp5vGhDZimcJ+1hONoafze0POAtzlQsMebZ2j8R4p1QhI2BBZv1CG+mnM
	 ZibDeJFlHg1e220bUEF9VYTdcsHQCKFVchBmS1oXfN5xXbTbhQenJ7tpYshBZ06fnC
	 7CcBTYmuILh8Xuhb+AByj/fH0CoLvvQd6gl34s068xjzyxKDCg+8vbbpYnL+TDgwZD
	 ZPwB4w28AVlKzs1mHehILHcHjPJQdt7av8sIHrZHyhHMgnCbR8kDbUF8gbEixco0Kb
	 TS09M70iFPJFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D58C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372745333.14429.14759862481740753645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a22725b9219bbebf3c5c88bf50877161aea0c577033052d5f57e4fe5a45475
Date: Wed, 21 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663727453
