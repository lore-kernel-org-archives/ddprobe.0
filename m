Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F317F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FB1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682131805;
	bh=ilOUdD8C4VK4YA4s9o7Txjd7R8GtVkU94Of1eeCEmVc=;
	h=To:Subject:From:Date:From;
	b=AOi7W1jLpJk9WR39+1JTmZpzjf0fPnqVl7TQv1rwib7a+LHjWii5aOcDGn6se+hjY
	 9oXNEXFXlNNSg/xWk8r6Ch5qZ0cYaKyE8SryWofROBM1/LkBUW+RAYdRjMfP0j5ljR
	 YULeRV4o+QFnKUHFf3F0N9QNNq8YxLzeVEE9SO8/t2whjcnC/qmSpBSpWE59VbtJHr
	 bxEw0NtjOCtM9fnX9lkXyMb0KKvOtXX0ETGVU0nIkry0hq/V1nOKf8F2kL0dxttA1y
	 GIxB6dHanLg+6O79U7P4mlLeIVwkrj21w56WEwuxa3vn+sSbWXHC0p+OIHkTG4ncjf
	 XLYanc7qciGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D1EC7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 02:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168213180578.23984.589165037661804827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b8873636ebde08a95922b0d0e40a4c548ceab299bedf28dc61e1a708be3e93
Date: Sat, 22 Apr 2023 02:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682131805
