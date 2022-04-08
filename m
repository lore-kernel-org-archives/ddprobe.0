Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96BA362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 06:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649400718;
	h=To:Subject:From:Message-Id:Date;
	bh=Lane3zdo19MlEfu5mV1wL6zF9G8SItwMTXCZmEomQQw=;
	b=ZvSv99nxHsdHTjOyEnRRVSwe9IkUD8z35aOJLuk8Xzzn+Gc4F1vMBjU7/zSmSHXV
	HJGYedCHlYjLCDlheaa3IltVYGTQf9xeZU9ywhPAJSTITIBppFhdu5nwwGJccsscvim
	qbrfvoylEHXggAz1xcERVegg8MTQul/oLxKlUz5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649400718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lane3zdo19MlEfu5mV1wL6zF9G8SItwMTXCZmEomQQw=;
	b=LaLyBpsKAq9YVLspSFp4PpMfYIqgbiwdUU4S7EZgKVLqqHsOxplG5p/AaIlxYRiF
	GU+z6lGXn8Ekvypm3E1JslL4+g3o32hmoQ6wRFV745R0aYu/F9HY6XYy8IAEizjF1LU
	NQFgxwk5S9YBEAyDYGJYk+7bAwkd84bD2LmrPuJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007f1a377-db463ab4-626a-40b2-83b8-322770f78a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 249a0453d23ab1bf9c533517f545737682188c85894f92c5d32272cf2fd11e5d
Date: Fri, 8 Apr 2022 06:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649400718
