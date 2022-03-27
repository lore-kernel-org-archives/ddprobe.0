Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3307E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 23:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648423438;
	h=To:Subject:From:Message-Id:Date;
	bh=ZdF9/J7OfAz6kIgLc33WAwrATjI2bjzSbSPhj8RCmUQ=;
	b=cI3EpziIEk+lGGkLkG9s7yG6ox9uQ7Kv6gRYBFakpv8Ma9kprEPDD0nCX+g2WRBX
	ISpy0fW6mAWO186k0kWr1mxxHf6arN4V3OEZQgQKj3b8/XR1muaEcMsDZUho3N64DgM
	D+OtMFrX0/Me873KlNY1ZArOZW6qs3SdTqbrD2Dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648423438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZdF9/J7OfAz6kIgLc33WAwrATjI2bjzSbSPhj8RCmUQ=;
	b=UO5cbBy5K1N8Q5iZQsNQpjWwnY4B+pbJ/MMjQ+MvauK4DFwI83wueOo+7j1nREgn
	p9pwALf38WyR3QuFw6nzjGju0bIW979ZZIP8C2dsNWHH5cF6L1UpbwQ5Xt87WgkA30v
	/pxGU7SzRpNNgq9Zq+tplL/g9/of1bu9MvzgxB9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcdb187d8-63789486-365f-48d1-bcde-cb6c2f24962c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eca7d9771f6e66c86db39d4aa448330ed59b06675f501b6cf83354435a30c201
Date: Sun, 27 Mar 2022 23:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648423438
