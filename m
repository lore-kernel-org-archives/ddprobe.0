Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E072E360
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE14C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664857853;
	bh=NIJy1eICu4GzMf0C04CMbMfH6W5wDYoDrl7Bxt43eAs=;
	h=To:Subject:From:Date:From;
	b=GTet2A5YEGJD4m/746cPWMAQPlG+REiakNIaYLDjDmasRLmtRwE3/8CtFsSRskW5l
	 5iss3ajgyy5Y5/Ymih4RAmQDpNHjAD/vMJfI5oyUMQLcSgMfjHp5p95hw48zRJW7W6
	 1NzrVS4PcbJGycwCMyXz8qeZpK2XCOClOpCVhY5HSDIN0+KIcEuR70yhayirZvzOpQ
	 YYxHkNo09628kG8jBBYByzuTv+hNJU58DKEAxis/Vsp50rZrDqiNomW/1suQ+IxgD3
	 svnXzMNi0wYY4ovpApZrKMXAEaJNMbxdFvcNcXY2YAInqUeYMZrzfblk/GmOVrajGf
	 fhC9C7pCup8Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5493FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485785333.17800.566434837510458963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9408cc5668466fd187c2894cbc6e8a87481eb7f9fcafce1af790f21807edf305
Date: Tue, 04 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664857853
