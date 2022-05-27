Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189977C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653691079;
	h=To:Subject:From:Message-Id:Date;
	bh=dSODR876VFzrQ39qpsP9LkGgoT+CYFNrbJLF2r0hpD8=;
	b=bWHa8o3q0twZe6+uwUIY3I4oUCcGPRLtwJvH6T87gXwSwnw4cMlOqC9ocgUNwrFv
	uCptXESN1nQrtppZBk4LVSi2zlgA0jq5rrBJtqiupxg072ywaAvPYcxtMOlrsnzRL3J
	lqCj5xPauC+fyOruTM7/fZoZVWIN7nAv/43iUy4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653691079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSODR876VFzrQ39qpsP9LkGgoT+CYFNrbJLF2r0hpD8=;
	b=DpXZqrkpfsRh+DwnRbVOrKYZTGfBzyBrZN49T8i2234y9+OwZkiClyYl/kMR1R//
	03DHIWnVqkF7RvyqLxpUWYN7Hg99hqqyBg5cKP7Q0TSJgce2mQNt1DFEkHRooscx72d
	QdM98rxMXIb5sZyMXZkN1G3BJSLionY75oY/X2hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107ab5a87-65a14d23-2b9e-4ac2-b583-8f0094bf703d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346be0de8545355f78411a19c6b23da3bc2fffc24192a4e286404982bcc07f58
Date: Fri, 27 May 2022 22:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653691079
