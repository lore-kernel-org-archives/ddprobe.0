Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40F74C3BE
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpD7n5xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9B2C433C9
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702310896;
	bh=9WUe31xJ2wRKdDV4Haf2zJV0c7duOzV8Af/Vu/0MM8A=;
	h=To:Subject:From:Date:From;
	b=CpD7n5xcNaain8cjGk16Q1KgX+UPGgqczuSXAgC3qyv6Z5wJnx76gyEaBgdHRBK7N
	 Kr1cId5471+FtCNqXIlHYICTrnvmfUoYYAZNJpcDiNwoDKluhKMxKRT3W3DTeufgtd
	 pu7qcu/6ymAO6ctLiEt56fkEl6lxqS9mSS/UlpDN5OGRaxHJEMtH2mCKXAGI1FTuE3
	 D+nUKXBCLApba1w7Hul//nz+NEit8Y5YXzcM0XsxyuWS+VOwJASKr/0BGKE6AwMeGT
	 YxwRWNhiz/5voeA0ms+GF71zBOVbRJrfhoA3TcVCfi7UJTgfmqw7tLoAt/08C/L4BO
	 u3MM2FrnYWJ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AAAC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170231089639.15424.2951656062831563873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aacb4c9fedf51b8325bb87b9395d63a8c52496dab4ca7321c1dc4e32d7e260d
Date: Mon, 11 Dec 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702310896
