Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4CD2109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887F1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671922887;
	bh=H8SKxSIx332RJklQeRHpmyUnvV+C+/NkvVfDTcjrTv8=;
	h=To:Subject:From:Date:From;
	b=hiwmwwEjYYlUYC4KvnysiBYrc4AyMlAG2hunn0bCw/YNYyjkwh7JtzDDTT0lX3r/r
	 mKFDVOqRa7frDtzAWln1lK/EfnjiuEipaDrHZpS4gP6l/7F2c4VDjkIGa1gckDrydt
	 JignChs7NcOYcFzcf5HdBBBcbg/XdTUaVjLeX3oMoBoi0ZIK78R1Tq98c3GaSGM8is
	 nLYBNw+pS+Llkj1TM7/MpJsIZUUfrmCNNAusMwfVNdS659j2v4ITnEeGUejx50ifZM
	 j9hYJreruX5Nk5EgzpS+Hx+HPcIBDv+U+KuefJrhMW7lt/vmr6VhC3AZVjpnuiy8Y5
	 XS61ZwVngxKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A683C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192288740.22034.12364111305363575868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bd2c74b936827f47da2a41a6eb5009128af7742e6740b147d1bf05ad2f121e
Date: Sat, 24 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671922887
