Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10FF171AF
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LksRIWJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDA8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700539096;
	bh=0QAn6DVCvitqwtj+zsx4O8BAp6nbipdiw/eRRGCjnFs=;
	h=To:Subject:From:Date:From;
	b=LksRIWJ1FCvM4nwt1kFI5vcOtWkKatGMGWUef6lYJVMSCPEHCsSoCSat/QFNm8MJx
	 SYGDNbWV+LwKi2T7dx8eepHOZm8BhGxcsjXrl9CfDK+RXDGz+m41pmGjHgehdgWYo2
	 tqQyB2/c4BJw8Yj0oMPGCnzTJZDDVdcRx5m4xCC4nDThbIH8GQ0AHrzX7B4fgeATUd
	 myOBOFA6YRdYzcpUafP4ZZnacLTsM3Vl72BG3iYRCKJOzgaxdG7d1b2W1hUD+Y0isq
	 A1sEGSk1pE8k6tnbVYq+9h8qVPbEpm69Zaa3WxWxfUDf3TzU5T6D56BgA5ZouaMCpD
	 4DMUNXdq3INMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECEFC5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170053909637.18044.3566445882415313582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d00da79023d33ac207c5c526b1ae4933ac6164988b59923895740bd77553b23
Date: Tue, 21 Nov 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700539096
