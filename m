Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C2540DFCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777421854; cv=none; b=JBhnPhfXoKuJeh7cO1adtJJY1hfqgkO9rYFa/uXUrLNdIi7riBUcLyyWS3YEqlUdwzKnlPYHRuqb8Ikw8Pjh6mJr+cQT92mAnzhvYwLYHowJ3+0FMBN0bAHLPsac0P2HEKn3nfGa/hd2FvPYp8V8dVYasWAZ/04NNUhU3tQcrIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777421854; c=relaxed/simple;
	bh=Io4RqZ9riR7gaYKFcONugQ/Yjv31vi3KHsMuF74/8AA=;
	h=To:Subject:From:Message-Id:Date; b=RpllP80M16/O2qJZxUi8joE2Ve30yI3/UxQ+4D9kZhIhBY5gM+Hi9ugQsSSaeKmdey6AIgyyDipdXz5zea4TUj2qKb0t7JqzHI7bi2xZtbN3kXfBh4p4Oo8XEqpPBA3Yf6N3MibGTy54S9l2zK9nnTGggzk/xR+NkVhq8dbD1Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7JmDO1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7JmDO1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA62C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777421853;
	bh=Io4RqZ9riR7gaYKFcONugQ/Yjv31vi3KHsMuF74/8AA=;
	h=To:Subject:From:Date:From;
	b=j7JmDO1YW6FypMN1SEhWjiFm58BCVlkEcMrcGT1d+iEa+UokXyOEg1GeEYSXZ7+nc
	 X2/0RkFPYgnHmwh0YFkkwbNJs8CgINFIZ62g2PNyXQG0FqSRakx1zmrZDxb1/az0bn
	 fdVV8KiwNMnmhCe+zVHVm358fJKCKrL8ZLBAwguPhk2ZwewRdMUzXp5vARnxKlVBPA
	 oVoMerbtlvDurh9OoQzRvDYfLWYuUIgneRqKjlzmZ3u8Uw+XMbLf8ym5epRmtLTM2o
	 kFtal79AApUQPiRMqzVl7oyDO82IDN560UlmFqsgUKOGv0BC7zBO+9CwJNSJuUPww8
	 nrjmE8Ql4+4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C7FF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742185368.26090.16988775031861523618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c1072058e35c9fecdbee5a841958c5105c99e37da871549cc72205c07ad245
Date: Wed, 29 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777421853
