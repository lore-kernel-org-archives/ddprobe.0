Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91996A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867410;
	h=To:Subject:From:Message-Id:Date;
	bh=3H2FnLAX53MneTXIV7E97Kuhsxa5tAahDm1b6HcFF3s=;
	b=hfTWDKgIfkpHWsdwZSD3VfAHWOSdXcIcANIgEJ2QXF2idtqy7fE5ox/77eRBDrWt
	ZbnYYSjPRIM61Q5YDzMcAZmPe0/FJ4omfWvG5f04yI6S+nPcD49Fu3cS+fvPFsSsYB1
	zhUn9++CLXSu4sUGlZ2HwQOnssup/MjvfUuOTA1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867410;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3H2FnLAX53MneTXIV7E97Kuhsxa5tAahDm1b6HcFF3s=;
	b=jnlDhZ5+4YLEm4q8qdoGgSXvTdcpHTJPZ6cTJtXhC+xtIRJZI2ALxIlyiezydcUn
	sVl0pQoLWDjm25rZA6XbBwp4hfduP50MFpyz8bNSYXoqh8LErFsu7QMTRDkhKN688pf
	ZPwAr2q2d0ekBk/eKVlXyj9JomqY0DtOvkkldNcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bcd73d-6eeb0a0e-1979-4e47-9d66-f6ae051bf544-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01b6509bcce9a60a1ce1f77142cef35ccff43dc3fe29eb430e7bb2acb9f78ea7
Date: Mon, 14 Feb 2022 19:36:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867409
