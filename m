Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355891D63F5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745833794; cv=none; b=RgCXC4KkmthLfWbmjKyuPlhrSmp1l2gcx5t5oROchkYo00f/99CRhvQ6Il70La0MGYPd2Nw4KsSJP2o3s3W5ZjqN8whZT9aKQKzt07NUGGBq2iquFdkV3mg1KGnyiIZOCgW3NtjjKlhlbR98LYi9AvLkeW8ThzITRZrq1FzdWiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745833794; c=relaxed/simple;
	bh=8QQJw/bVRla5sOBbB2QpPFnh+wrSB7lTaOnQq+6CDvA=;
	h=To:Subject:From:Message-Id:Date; b=PDqXPHOBDp1hUi4ibtiOJM8zoIbTD33FK7DvuQmNRqnzJJEZdTHR8IA9Uzsxy+sJ7LbkbRYBEFZ7tX/236hLkCmwpjrMsH3PjUpkoVLqzbC1wyoAop7haLMoDzqQjiHvwVMa+74E/JIWy3VqpPPKkf+7DQaBcacnpJo3SCe9em4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vpptv2Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vpptv2Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3CFC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745833793;
	bh=8QQJw/bVRla5sOBbB2QpPFnh+wrSB7lTaOnQq+6CDvA=;
	h=To:Subject:From:Date:From;
	b=Vpptv2VngRhXO34pnB1fwOdw9YlIPn2d0KUZkSyhYgOkk0yoRBkmObbK+cF5ksjcw
	 qiJ9IQ1waNIKHC+d1a+05EqdsO32Ws7JvSTPIkb9H+2cnaZKrndhs2GONfwtf1tpc+
	 5qTYZnvZMbfRzq0TqCTfPNV/Q1jiB/8KBM00ko5H5c5RK5lchMhW6h+lyNxlkz2bQE
	 aVGiRHlNmcavBgionR8A1q280HTunglHQDAvqzrvL99hyOrvtjiZnkp0cZuV94wZby
	 X0Ygf9ss0+k3kxQ4Y9QYG9RagUhNLi8mFoWyWnzj5wug15JoOsImyK0WB0Kt0nOEFX
	 0UFKSQM5AVnwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F2C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583379357.29698.9727756305216575981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41afa4e5d967b8c13f5eb632634ce10995d3fe95685928253fb294e906bbf020
Date: Mon, 28 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745833793
