Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A8A33E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650839338;
	h=To:Subject:From:Message-Id:Date;
	bh=sL0nw9e968N0WVbUywU4Uyy9w3ohLjYXks5niVe11uk=;
	b=iIxyUjy4EQCukXLbyH5598lDSMy2aJ8DMKzbZlpsBLSYvNSygndW4oU+/MUdap4L
	MbKoPV7j+x2tsmzEONG/Wj9StzWt9KDQFELiN1TqKawQ5ghlGQDzQOKaK624d5V0LCA
	RdE+/4W4UJLm0JCpljknlBPkXQzYtOam6KNJhJTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650839338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sL0nw9e968N0WVbUywU4Uyy9w3ohLjYXks5niVe11uk=;
	b=iACii6cV3mJS3Ti2Dsz2kXGcEZThpVCtgtfM8zgLdaTKIFNG0KLG/KdaGqWvOmWx
	OcvB0z2gsS/kJlqZOAwp6OO2uYZubHpdVJIRVHA3ck0HcXMuSvWmW/4IIE0YEJfhLBr
	388Pu5JxCHfah70GBZz7qBAQ/d8ywy8zI8U3HBRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805db13d4a-c73a6382-caec-402c-889e-28a8e985e08a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 150461e06af73412090d67eb63e8abf82326034131810f8f04b2dae7c0681915
Date: Sun, 24 Apr 2022 22:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650839338
