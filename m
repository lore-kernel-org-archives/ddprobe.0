Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDF12F22
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1C8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664377853;
	bh=9zLgn0TzTlpK4r1W5gaMu6KFlCbScg2YAiZ51EEt6VQ=;
	h=To:Subject:From:Date:From;
	b=bxr2noYMDXBSmZN57NXR7HXyv4mu9g7oUMvJPeZCFqHbG2hZUrqu/3+2QpBeC8Yua
	 EBDIcwK1wNagD0vPeQYqgvDQ99eglBdK4Ecg+AOIBCcMQuljq0n2RN34+zS/xJabwG
	 2uV5BPIG4XzvLw2qf4qyf6Ic0ERA2fl+/j4Abtmy3/8jAmLTEBDzD3lv4QVLUzfXA6
	 H5gjOb9SNuY0z0b8h0Gdpr8gJ7+LR9V3ThPSqnqxtXPS/ooGRbQhk/zf1n/SRn5znZ
	 RQijkgSzVosszZfEnUCpLDKhe4B0rGAj+kVO0nf/jcEKrHYCNZ0xB4ySJvJoYulwjz
	 4QGUnbswDBPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A79C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437785333.12882.11769107268871974411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c641363fd4ad5b674c030b4711f6b6961438df66148e3e3ac55ca6bfbce2482
Date: Wed, 28 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664377853
