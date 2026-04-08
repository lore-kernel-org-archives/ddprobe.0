Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317D52877F4
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775690734; cv=none; b=NOHZwgtliy4zqQ8XiLB4sdXCyARH9IJdvjIQLn5LHVtXu/++ZmIkOSI6UCegi+gL4g2Hfq4YoWumuZg6kz0HH0OLWqFW5uEfwZW3oUbrpcVzZE0VsOlFNkS7dMBhHO9A5XYcDrdhcaCPxER5rjE+uej5ssGW7K7osdn9COCO1p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775690734; c=relaxed/simple;
	bh=iyFQ2IQMAuGnwAiMKbUE2I2zd740ztYjS03fOsJmw14=;
	h=To:Subject:From:Message-Id:Date; b=b50sHHFQBQiwO/aBfgQHHO98J1mFGjJMMIBBVG5+Wh6bJFL2ec4hAY3AjXpD/kUsM/Xt5hiH5rEddoAko3mNyr14aRFJMiz4UgBXFNvEpI3nMM6FiZY2WUD0BPlguWPdH3wyPuq03Z/WOu5eO+ood0KZcas5knwyuux2Sd0A9IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp2T0MHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp2T0MHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3432C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775690733;
	bh=iyFQ2IQMAuGnwAiMKbUE2I2zd740ztYjS03fOsJmw14=;
	h=To:Subject:From:Date:From;
	b=Vp2T0MHNdU5YPYce7SOkqla7uyJ93mUitR36z7m2PYxEOWxELBpHQm6bA6Xz3F8Sa
	 1fvPywePGAfZD6kgvuLRpNcwFL+U+4E33Ue7sqOz3Y5tV31fuvPeqFPpdIKk82jr3C
	 s2SH7MdfvxnEuHFYDDLLe+kbvVhE8wt8Qpf7RFfXBTN8xv6u/knMzdrBlMdvNCeK4l
	 fJf1gVzG7YDYBfpu2OPhrE7g8QnWI/vfnAota4UeXsYeUSACC6YRVcuNKI+7goLtGA
	 9E5h1RV4KHQ4fGHEmAsYfz+jwjFNu6SQLFjWbgWOgzdEnaq4sU6AkmFPDQ6D+ODRCX
	 gEsl32fJ+CHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B1C10FC456
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569073368.13169.12508287847448153973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85e9dc952ef6d7c32629e814e5842eea53a808a21d8925e0e56986cbc3dee19
Date: Wed, 08 Apr 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775690733
