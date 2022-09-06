Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C544A24
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6879CC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662472253;
	bh=4YIma+Dmwms8AfiQG5ei2Z6afs80vNhxWi/0ZquVr+c=;
	h=To:Subject:From:Date:From;
	b=fA+1hi69tRpiq7zB1MtbKO+6shGuFG5GGv8had0bdEXj6vdprVRjtcWtHTQgdhcoA
	 o8Xs3MnEseBWVj3gSy5loqT4p9cbUjQwzHv4IKJLRKutrrr+SODe0AKucN44KiMHLR
	 Ercko0HxjsB+zebdGjHOagy/CVEgzCfZRXsKoVjcqUXiL9PRuuTTyxfk+9j4EV6cZR
	 DApHapXjhBtijFobEbXgDcd6OAFJDPct47SFM8ceUQiIzgmbuupWZUzzd79mncWsJc
	 3ZwoNVxaKUmw+xSfmtePjv13U+sMNIVn9BMi2+ujLtghAHb5Em7GpPiizgXpS4VctN
	 YuhTY+zk8biFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5124BECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247225332.3371.7125765366097214186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c55591390de62b76a26460fa0717ea3643c5fe9fe810bffacc094d5b4bb309
Date: Tue, 06 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662472253
