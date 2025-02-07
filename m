Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CEC2114
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738887954; cv=none; b=nUDPjzxvWhJRdVDFibU5Jipm2g5aEW/Z4p6IUD5aljiKVN5eklZ75rFDVafxSzM0svbAn8mb8jBKwtsiB1HtQ3XH45oft5Ct9f0EaPR6VK801IjmkR90SUoqaS9uMGtKO//3rjd5/fiQQ5OvMDLQwp3kamuTjAeyCq0OUmd5bOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738887954; c=relaxed/simple;
	bh=/lZI4EOWyFCW2s6FbFE1KfI3i+H1eFsTfhUVdc/Pank=;
	h=To:Subject:From:Message-Id:Date; b=b/p4yyRh5C21NfIY8f64tPVp9qS4Hfav2aIpkWw+dp03Lk/Ef5cexlqIlal04dSOLBr04kTh+HbR5MfopB3xAfcIglUXP/NTXtU6GW+t1lZbu01CR3Zd0J8+W9k9XBmgHabGtG0BfAHcDlL3TXVEvm1bw82gxkHktqJtqIUtYJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5vGEr/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5vGEr/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8956C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738887953;
	bh=/lZI4EOWyFCW2s6FbFE1KfI3i+H1eFsTfhUVdc/Pank=;
	h=To:Subject:From:Date:From;
	b=V5vGEr/Ru8BYs7yB17wGQQMEx1oNxeVfGkLPwIG/ygE8oO1kPxzm3KVbJZrnPb1Lf
	 39q5d2/z6oW9M1EF8Hrms6FsUXQTKUmzljRMRZHYHeFxBfUFi66sZitRF/7XOSkDqt
	 J5E9MKjGMrltuntIWcAX5TVfy9syadiH5V6hXElmUUqaP9RJ7IKT38cZTlWaa0FuZq
	 b24AGIoRnHwSXvBwIWaAz6q0mjMj128tXRetyxxFwkCOhld8M6vcPBU8J8p4dMGnYD
	 SZ9gwte0iSZzwFkvhEhMUO5qmyYOHAes5idBuPuKOPyA2LC42dvzm8uu1e/PaahjUp
	 qjmAMjldR7C6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A73CC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888795362.20032.1461382750599116226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154b0ee33a53526de8d879422ebe9bb3a017cf80950bca85c041a5dd5391272d
Date: Fri, 07 Feb 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738887953
