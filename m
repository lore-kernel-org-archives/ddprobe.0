Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE28210FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749337194; cv=none; b=a1bpWSPcYPuckUKeBDLZGjhJoD9REByGMFL0ccy3CsvzqTV5l99493ZOkilQihZ7OP1pcQwkevYOZrCZR3o5xklw0376A+uKAUrWFzHgd5LWRXokset8KCQHxd+OUYzrbwtHkmwOB50AmUxKUCKm5pW7PA/W09Ktfs5oJ3sKrBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749337194; c=relaxed/simple;
	bh=aq7WdGe1oqsRhSTvl1oIY4YcmGmNpAYfSG41IyziKQE=;
	h=To:Subject:From:Message-Id:Date; b=cIZq+WAsgtQf7yB/MOo0naFG3t+vB5urfU/7Uqvk6GGGEahyoHoLzbVLkVDp2vKDvGz1JtLCTnzWRWvPJE1n0iXAjOSrxAvYmC9w/x4D6JBcbuR2x/PeN392HyzEoVKwCR2bRtVn6Ug7zlMstUyS8L4K3br34gIcKN7tFl19xjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHQbMrHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHQbMrHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C170C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749337193;
	bh=aq7WdGe1oqsRhSTvl1oIY4YcmGmNpAYfSG41IyziKQE=;
	h=To:Subject:From:Date:From;
	b=SHQbMrHEqe4cjBl6SZUAvnZ5WYYlmK0lJ2sWohmPq9hX3CIq5PNkqhK79EFndvw+v
	 Nji5rRirwfDlv9fMgKwFDFtxhRFSd2/MyA68zBGTdNZrvMmdFb8eRvHgJKdwe5j7Ds
	 kszvHWOiu8Vz6fZ0UaS+hzeOJhcN0RWDIqE63V0LLxYVfzDbXpU/J8olcmwQYXajdB
	 j6kjqml4czV05bvsVGKkpQF3q7LF9ITRY4LTE3LIE++9q5bSi27Jq4gPv6Yk7LuR7i
	 AD3LCpf9vm9/+Mr21wT3Zdg1i1EV375bbxAV7I3lHqj5RZJ4OM2BhCow3lgCKkJ/V8
	 +lEGymtOF809w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E12BC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933719357.18359.5940050983740640924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05357903bf44e4e1645160b407133474fdc85949de9fb498fab9abd627d48b3a
Date: Sat, 07 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749337193
