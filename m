Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1216134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647111985;
	h=To:Subject:From:Message-Id:Date;
	bh=RYQZ5ErCJGypKOisFriqJp8BmnevM9Y3G3nbRHOx5Gc=;
	b=AsWXESEmc/AVGOw0WiaBz+2/RZ7uA5Dp+g/MqPhvAniFPgqqsLU2IChz9rLCFfIM
	EC/O8owGM/vs3dMYzzXBWCzXW34WxJ2rQpn4ya+c1US2gzIekqYNfZb0s2Dl+Fm02pd
	qHZfQUWC/PUmlN2oPzSU9wnxnQIbApl+aoFv7IMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647111985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYQZ5ErCJGypKOisFriqJp8BmnevM9Y3G3nbRHOx5Gc=;
	b=gVgNFQ3l9YVtEi6HHPY0Ixra4uJsOnnLUlR+GgFHvJ5M0dRYwOP+uLtJgImxjL5O
	y3zVztyvXltGIfZl3w7j53H2R25LgtYXOsnig6Lg+XckOmVAUitdHy8TqJ1yrwM7khy
	T7CW770IT/4GNhYVqwVKg7ZBhqrKZ8CavRJ2s9yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f86566b-99c6e8ca-bc76-4d15-8352-19eaa72502aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a35cb18c5934e6b184f1a30b8d16ef0c13820c32db965742e5ac69ce0c41d54d
Date: Sat, 12 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647111984
