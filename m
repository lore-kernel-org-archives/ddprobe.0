Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CAE263F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745241594; cv=none; b=kQt4oKqqSQAXY3vu/enUx4H1gRqsKzQsq/7+Xh36wjLECSrxxx2ojjfEG6yjYDBXVbDUMmotmZ7rceXiL295Ted8OnxG7KnHGJ3IVgcPIMIb+XsUxXNU9C+3VVc/imdieB66xAWolQTxIR+exonuecz7DhdCym1i7XYzDxgDBlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745241594; c=relaxed/simple;
	bh=E5GRpYHas4bgq/HLzmQ/xOvDQqo6shDR9lNxHDGHTHk=;
	h=To:Subject:From:Message-Id:Date; b=QRmq2/jjeqkvogALYSrBH+9tf6zHnwlvYIEH7g/+XKFhufGqNmpwabHcUf4Cza5GJvvnSxGgMiOhzV6kkHjRxDEmBf+2qEpa7PFjch5IJso49SQBPtzfElUdaRoSLiBK2MJQDez2c7XTkLsmxcBhvVHs0pQmQFXrg7k/83/OiqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jB3Jg2Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jB3Jg2Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3589C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745241593;
	bh=E5GRpYHas4bgq/HLzmQ/xOvDQqo6shDR9lNxHDGHTHk=;
	h=To:Subject:From:Date:From;
	b=jB3Jg2EuOx/IL9bailUClSzHdaekKxOCola9s8vV5bd2dk/+JyKSj30y0llC6U8bq
	 3KF+cU0IPT6iwJyXqHqq3MbzGg8v1zWbfhvbTkjl7grgzilwGlu7DGz7+xlkY2MWme
	 DTeXje1lNhYa8dtiEYGnwoo2YrEh2m+AHC1jIIN+WWWrwQzrUkGN4NML5W0GcofEen
	 AH7/loFnCOY1jiGFQMbyrelWxwxNa+azoMsVmyfu8E4AsD1Fl7DEcRq4uYwjWjVxeY
	 10j10IiUYw70ILy0xy4ecS3UOuJZdQnRcEfeGqx8i4QCDv4RCNJhYWvyedPkMkrT6J
	 Z8dLmC9Hc/oaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E257C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524159362.27205.15355922506014781165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f1e5c70c814021c3a6f20fa43d4c0dbbf7150add82e8cd3b11ecb901789450
Date: Mon, 21 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745241593
