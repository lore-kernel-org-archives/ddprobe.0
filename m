Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C78629425
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9d2/VBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C1FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697488028;
	bh=uqMoo6LiRucHmPAlqxe8q5jVDGFg1mZk5FLEX800uMg=;
	h=To:Subject:From:Date:From;
	b=C9d2/VBzmts1WsWX1FtVvwTa9w3rvVJfnORK1P2R+ODWXgRV0BUdyRQAG6j3HC4GB
	 mz+2INuwIAE4J2tj2lCNY2e/rTrzZ6LECGt2A/5mkY7b8w/UWyXMRs9keRpe+KGUNR
	 rgZyzICi5R6/GqDWGSLk9M77nw706rR6POXtKSlsMiXhdqOMqryHaDM/U0oNK5DCMt
	 QAKOmbtuh+V5sL1OI9OJkSBNveIgLP5IXtORQCU0NwlYlBpZVk5cYqjy1VW+2iy+hk
	 zIp0N0HJFw9m4Axb0V/RO7nrGL7nMSAf1lr4uwi8LV1zJSRXwh8aSERyBxuNGwku8V
	 JZLAKPJOLf9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC752CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169748802869.12969.6934962606568250682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7701b9a981f83fb0c1d15093117daf6bd96ef4136dfaa8b509e8905c77e7698
Date: Mon, 16 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697488028
