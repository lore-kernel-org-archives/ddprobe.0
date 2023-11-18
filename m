Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0456AA1
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsL/QaLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799E5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700279896;
	bh=7l6H6k9jkyT9UgtLa9Pn4PVf8saUYMbC+ryAIbo+tUA=;
	h=To:Subject:From:Date:From;
	b=NsL/QaLKxaN+na62le4HqL8MfVidMIUF7FPkg8NHJaHPjm4jX/8xDt5scRPZJTMfI
	 peEGNtNFvHUqvdtTByPRA7Pf/BipknbM1S0pzmslev5o0IN/JG8mJpDvBLAYcUtq9+
	 BCGrPwNs15Le5FmA9DRsAUzGn/1RoquJEfhTQ9R/zGafFfytesM5r0kNOENHzJNdGo
	 bHVARkcAdfLuPYY1/6GhtZ2MPF9CJC/V6dmqDH+P0RkFEz+1pU+HpEcMjeLaO4zHq/
	 5WtEI8t3CQokfpeuHzEFaZFh8Dibl8FYEgpXyBHZN8FZjZ0iww0gK1NUDgvgROd3PT
	 T9WKZ79lkaypg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD39C47071
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170027989637.20657.6040326740014327477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60941591397ae2b38e51e04024a0e1ce72d065cc6d2be419fa465ca080172ea6
Date: Sat, 18 Nov 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700279896
