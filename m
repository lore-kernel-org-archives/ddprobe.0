Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4F011718
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714613543; cv=none; b=lbu9ZcYiEQd8pvmJ58EWF8F9LW90XCAX7OVpe9RRYKutVy+bKUByK6pQQNWP3lDesQgNQGQJfmCYOZ5/OXoH/t8UMVn9V7nE6Y/qYV78LtEXSwwpXEXQYOt6Q+3PToGZZEEJf/CEKRWGs2q6rLeO3m7K2YaEv584oX6LyJxolRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714613543; c=relaxed/simple;
	bh=rH+Wdhz9KXFtu7QGLQ2V+uSH9mC4/Q0bZ4Lp1Id3t7Y=;
	h=To:Subject:From:Message-Id:Date; b=QAGv1hZwgrmWKjgPh6AXn1CUPl8OAn21QUFPMdbjIv1KNfHmCoMF2KRyAVUQ+bIJJW4p/cWOYxIDtKKkHAnuK0nHBoPdscbI0YiGRNyq/W02Cvt1/21sDOjJ8XQUJlahxj7yAH+d/Aw6HcBDDMocyXwaKPbNBCvANhbZstqhmCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5niKTPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5niKTPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E747AC072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714613542;
	bh=rH+Wdhz9KXFtu7QGLQ2V+uSH9mC4/Q0bZ4Lp1Id3t7Y=;
	h=To:Subject:From:Date:From;
	b=X5niKTPTH6h45ncq1spJkW05UwY7KbhU+tNE9rUxIUPcCmBcSav+Or3jdBPdiW+tu
	 auJXTxZEPH5Af6UWlqlQe57W6GlaAUR4x/UAmJ4FyW4rlU3P033OPHKqWt+ixXDCdL
	 vXofct9ZyQoDX6/CTtmztvCUjFI6ikIxfCuObbXDUTjnlphiZ9mYkpaHqLg8mkc+L7
	 XnBYybC9oFaOKQ33aRfxkfIeGF9wwSXV5myR5YB4e6l4ppJ/CrU1wJdKDoi+iRi8/l
	 Bx8NeUtE3UsvSdMEuAawIVfLFzC00l6j0lz8gudviBeLKGobOSl9nH8KQEozdCP/6t
	 s/q/rwZ2OoxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EA9C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461354281.7835.9256058884544591341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84babb0be756bc4840a3d878c79c3df477cf05973452b5a81c65784e6a920596
Date: Thu, 02 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714613542
