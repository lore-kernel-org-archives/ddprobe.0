Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7557C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654966079;
	h=To:Subject:From:Message-Id:Date;
	bh=3ON67x3rNGqSe3WGp0m9d4sHv6hJU+pJxkGEoInsb9Y=;
	b=jhTxpHGAoV4pbqP46cD682Lg7GRNEOtqn0/Dn1C4D1Y099uqPRVi1tnLryxMcEWt
	1CB/PTsC8M5DISPsOoBiNqb4Z601ePsf0UQelQF3uW5R8NsRj4ymLkxqHUa7Q/ry0qw
	Z+kD+nr950cdUFA2yfGYZRjuTHCkhEuOD9YEYU8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654966079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ON67x3rNGqSe3WGp0m9d4sHv6hJU+pJxkGEoInsb9Y=;
	b=eT7tgBNfedkCzxPRVgoj6HhCq4RZi8ldvaQJx1K1fWsc4BWdzQoRzgMURF8xWmbW
	sFVm5cveeelvebo+Nsahf/ppO0i/SERR7Pzdgxc9ikXrzkQeWDfKJYBjFqCAPPP2uYB
	KW3tVshfMRUqAIJYjXNQVFdgEC+BUwXEp20nRYVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018153aa4f2e-ef0ae2fe-b051-4fe3-957a-30293875df75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94c169dfde9cabbe15b5e59a8c1ef21c2b165d856241289b12613a169896acf3
Date: Sat, 11 Jun 2022 16:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654966079
