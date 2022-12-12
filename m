Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC5D23BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFC9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670847087;
	bh=sg+xZ+ZiPQISLPXJNm5enIz06Sks+2BKFKsNF7Txuzo=;
	h=To:Subject:From:Date:From;
	b=j7/vFgumGYOHUbntkH8Vp9WOnGA13u+5mq0+UDzFbNSd50hX9uG4Qkc7LoDus3lL5
	 fTNN59Nct0+XYgsZOioJADRd3RZJMxk8IQXyLTSQ4dOZ+IUD0f5q+TUl0bCeI5iJ8T
	 XwCMG3VQz5f6VOXgG4nTqsoP7QDftREFoxNS73aIcXB/V/1CvGevtKmGkjr479pCYX
	 hWiKXMAqFM9fkfDkIzyMFfklSph/bTf/YKMSJtnwj+mOSfY67DRmJVXMP4DpcgbqLw
	 dUUXpcy39v711UviTdu3jco2Ya2skZGGTsm/fnVXZdJ8lE1NO8kT+Ams7GG0FAKLwr
	 qwM7xCTsw0elg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616F3C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084708739.16663.14559724273943307637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30633de00928155a7396eac3ef51034deb9ff617e5fedc421c497779614ed218
Date: Mon, 12 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670847087
