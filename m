Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE4220FAB4
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751608794; cv=none; b=eDbOot6TgvZaF5cOLaIw2uZ3khw5kHaZ/tYkC/myq6EohWsvAWEa6EVMpUmSnnPnCQFc4No12tSSpiUXvVfp7RruFBS7k6iYsAhbqPdES7bXWaQ/naM2isxR1816QEI436ORSzOrDjglwihb1m2Yheoi0Xl20fGKOVp0x1d7QEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751608794; c=relaxed/simple;
	bh=tKKyqS1qFijb0uZJuJR7OkDuZt48iYo8HwsoKxtLzho=;
	h=To:Subject:From:Message-Id:Date; b=gNR8vplEWdBZ4JfTbQ3XbBwg1+aM0JpQV0W+HkD0m1CGjCZpb2+559AwieVtPuMUYWI6min8GIOfZhOzmwy7dtmtSXvYX02a8KSSEjobdzp7VYbJG/3zogLvwNfqls8VX4uJyILrEX8/aOPgtbh8lYbSa1sRhtFQnFQhdWXFXLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+eaic+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+eaic+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D509C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751608793;
	bh=tKKyqS1qFijb0uZJuJR7OkDuZt48iYo8HwsoKxtLzho=;
	h=To:Subject:From:Date:From;
	b=P+eaic+4R+r2HYDYDdg8dwSxP0UapLWgrB7RywHBSH9zSHr8/O0lm0aA6biSXg9ox
	 lBkri22J0TFvTngXlC4Q6S9Xs1dD5N3s0fILspoWmYIC9ipjRUdJaKK+7+AoUd7O7A
	 5/kMDAg2IBumRPaAYCG2Z7smVUfqP/hdGJ1XQe5mEhkNwhSw4Cl6OBBtATMn3Xrova
	 SMFO3yHmVqZ5z3SPsCr344FZoCQ4ukgDzT5W1xHCZAdPwq6IL1i7AYbwatnirZwfqk
	 TXquhcgcMB+FhCn3+1ZogTGpxB1y1F6skGb4cx2PfDYxl9geS/sydI0c40AzGf9kzL
	 9YSEuwS+Sfm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73BC83F09
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160879357.13397.15678866826860072912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e2644f8bf49fc7bed88a856d4789969000d0e31fa5b4a781da5485e957c226
Date: Fri, 04 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751608793
