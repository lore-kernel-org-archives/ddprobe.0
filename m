Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE8733D8
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758326994; cv=none; b=ZHV/a5KkUYxTp8hZNqaxq84Acnxdw6PR8XloCklTAasV5gcJsUm+ZZnqRd2MoxG+oElOlqaK2CRDxJCKPakjdwuxsBT1X5vhK3YKOtq9FPblSlrFv4JL8URBIBSANmctkQuvGRJ+AE2jY2ER5eryJhsqBPMGqpfy/nc3sZE6Vj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758326994; c=relaxed/simple;
	bh=OkOORQBOOotjeYL6RE2kqBloSO95zTQ+PG0Bhi0dKMI=;
	h=To:Subject:From:Message-Id:Date; b=gd7CbaPYBxsqvyUOzFJudz2txlhCbb0hwYvjQKdjxcq5cr3cP2zHdu+riaZg3Tt+GzRkHRmBISDB6aUpwWkraJ5xo8x/IvobryLPe+i/Ub3nFF3DeRWIZXL70gktlshdtA5sUsTr+tMXH6xEx3yqQDv0cMsVtaF9U0a69Ta/pqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjkAbj3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjkAbj3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3C7C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758326993;
	bh=OkOORQBOOotjeYL6RE2kqBloSO95zTQ+PG0Bhi0dKMI=;
	h=To:Subject:From:Date:From;
	b=GjkAbj3UQiZSd1Lovuz7rsC/mrIrLY6Xfajc3W8WORWDCl0BdCSzb00SWxnFSXdmM
	 5+Lv03fWm5toqoGs7qsDNoa9OGWVBVvUHWaQD0uKRzn/KKTuPjP8x/50venO9ImdOa
	 FY66XBuZJXo1nWercrVUENtWvg63s3dAUmWDS5SL8/qo+UZ2cOP54tIz1QLcFVoXul
	 WrJ9ibImjTsIfFMQNliZyhZUo1ER9PXS3Zp1KJdYtpnjBnMe+cOdBl8uG1xfmOWGs8
	 m4YPLMFeK727dl6VY6SdZ2woGRLCUd1IgdRMYg/c8l6OA88i7Xb7rbtOBSQrV5R9oz
	 7VaH3JqjKGbCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFAACAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832699358.3101.689327132935596889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ca255055d75c5b0620bf4a0cc573b0410733aaa942c044826c77682a247aff
Date: Sat, 20 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758326993
