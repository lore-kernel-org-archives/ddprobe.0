Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F6F1A601
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C353C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668100254;
	bh=tvW0lSn03hWIEnVQQy9hwC75flQtromGdfSqqUxFS34=;
	h=To:Subject:From:Date:From;
	b=kxbC3ljuyyZ+bkwcn5iIDRP3cyhArUuh7I0kxEeJWLSkhLy5Tv0K4YRklMQb+K3T9
	 P6wYxDKTXUvgUEiqldEU1z18aKEf8HQHr1R2jcs61z/Guu5f4eMtR7rZ3HX5IYz0pH
	 tQ3MBoaX6i6jI82ElxUDW+ygPWIc/MS0ny8CNjxJAdrtG2z7968mBBtBTqV/ZjpSu8
	 fCoBJY0E5Lwzjn04BdFX1hCpGg89U9p9QVXFFdsQOnlUPMYBJ9rFKw5i4wZsRWeABz
	 pl7HI4qTaNl8PM0Q4Kka2ZGcC4uhOih9mO7TgrcoILsHbka4P5cLsR7/rCAfdk7lch
	 YGaTHkrLC6Xpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55280C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166810025434.26315.4443832732561507077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a58479f49b80f06fd93357f00c0246da1a05923c9ede6cecc38274ad8d2033
Date: Thu, 10 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668100254
