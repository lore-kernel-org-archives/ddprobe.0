Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDA76FD5
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B3DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685369526;
	bh=M0VYbs3hLdVKG9b3/q13zhHjA2gRHAVEADCXdcnG2Iw=;
	h=To:Subject:From:Date:From;
	b=j4VbggjnI6MvABAScpYw34aAGHJOHGgApoRXsCYCbUdNINI5CbAJajLBpvHxZWfS5
	 Hc3zEir2eSdG39ZH9yN+58rwfkrg9dwBmNYkRvAV+FBBaJbcLNzlJCcIdT1ddDuVFy
	 zpFNlgevlWLWllhT61MPTDhN4XBgMGe2UhXjvijUNkuI/PIBHk3gpoyjaxZ1wso2ew
	 UoRU8yaI64N6NK23x7kc5dBCMdoXKqkdt5Jxs47IyDGnh9v3YiELA3UWeTwXbp/wjj
	 YK2KSdrUcJLh2iX/OoBdk+CzvvVIbiztd+PkcVBGIHmUpwggXqe7LMj9t1LwVSMRRt
	 f9M7u69YT7KPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE15C77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168536952581.23392.1670880924986317426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9695572816fd6ff7843482cfd9e51cba6485506b7fa5e4124226f6e95dabb139
Date: Mon, 29 May 2023 14:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685369525
