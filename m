Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769A1100CA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A86C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687544588;
	bh=ItfQggSdUCObKvWDUVO+i5/FQtpIUcsth0yFvjhbgAM=;
	h=To:Subject:From:Date:From;
	b=SYAacbPXZyj1qso0yqOhhLEBq334EDt+QeNDjSj9HxMr6w00Dt8JQ+7QFbTIWpiBB
	 tkKAXYeV51LnUAtFsorR9ij4GpkHSgpE/N2hvQdhgu8VXOiiD/MX18FmPnIDtfpVUs
	 SYwy1ROtauQ3KSAbZXGrvYI24bKXQUWFGqy2jJX/33vO84fmS0RRBxptTVWTHo5/HI
	 qVuZPjK+BQ5+w1zbl6tK6yRUaCIDIS4MPrORzO4aEHFEvg+awSw37WTPh9Q58HPCQh
	 w18VETMLKcyiztY86Qir1bGWghgxgs42UfvRKPr3KqRwgXvTV63+P8LfANiUwygS9H
	 aG8kAzehFErig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6ACEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754458883.23500.8769862390102693970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0095e8d26dda834096229403d5601d2192230569ded796d3a0e6bca8b2f969c6
Date: Fri, 23 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687544588
