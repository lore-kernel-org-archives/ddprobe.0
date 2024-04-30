Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C8FBEF
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714446743; cv=none; b=tvUXrXBE3BsywargsyTsSgnGyU86JqAUyUKeWds0HKph4jCjq+TzlJMNo8g9BPmeQnbdNMiscZ8qcrYXBqRpM51wpslsM/gBIfE4y+axPF1kOjc2tBlm/Lf0wNadZiveXs5s0RSalqx+GmPHuG45Uw5XwU7NjDK45JGUmMFFSEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714446743; c=relaxed/simple;
	bh=Vmrl7+cJCLb51aKqvFVP8fk+nWk3/KrYVCr52YNHuVA=;
	h=To:Subject:From:Message-Id:Date; b=WVnrlUF04H3J9dAUXuvC+UfTdtyal6O02w+ruzBwDWVXiIuWDek0MhHhk5doTJRWz4J8CHq9VR2/kgkqx2fR2kMQQIlqF23hCuW2ARduLmjf39SwqXiVYoRXFfQPkBv2PypmYWCuuo9s+icp16xTJV+pq4qfRNHpTL+DD05odPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbzfWLp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbzfWLp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16B4C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714446742;
	bh=Vmrl7+cJCLb51aKqvFVP8fk+nWk3/KrYVCr52YNHuVA=;
	h=To:Subject:From:Date:From;
	b=GbzfWLp9fC7Q8BUo9DHoTDxcYIFJzo8kcEo1a8tgsutf7BK+GWOpP2cGbxfL8Eej2
	 cZigyMrd6VdV6YJVkheMK4jX/c8ag1Fk6yMc5d1jB1XXwc+ZNnR18iYUpsubx5HTuQ
	 ukV4ivMwMWUoxlfYDjaEASfeUk/AQBMjyERId+3W+iDl9Ca1bpS5nH5Ew27FrR6OvM
	 bTMWjpp2bc7DNWTv2wazkhP8x5w/TFOlrF98Iwb2V364W1YAhUM3caSxdfWIo8s4k8
	 RnrTxH8Qp9mz1XoWAiPWYLyJc8KJAC1Ohs3ln0E2HiGJX40MlxkXehztLasj+nYaJS
	 d/dWay6+MNzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CF2C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171444674278.18065.14558747948479668549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db96e96919c4143c8e5fcc05db7934e66f48a69e3d35dc725a84e4157626eb8e
Date: Tue, 30 Apr 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714446742
