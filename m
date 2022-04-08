Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0E9362
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 08:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649405158;
	h=To:Subject:From:Message-Id:Date;
	bh=olsPt0EQfti+gjZqUza5+Xh+pxzq4XypHDh7xl9WCAA=;
	b=mbYHzvpcNcAD3OHWCX5P8Db/hZJC+meFPzmOlgZvUUgllTDPvv7kkkA3cu7gr4Qy
	KrqyuHIs/eMI1Nopv6lUSQoBBxYuQ15CBS2Q6KiV4AQ8hrTUaE0sPNHwyHvwBjlOfy7
	CtMtvBfX3GxtpsX4Yk9g6DrfsV1b5CGHfzWQOJUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649405158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=olsPt0EQfti+gjZqUza5+Xh+pxzq4XypHDh7xl9WCAA=;
	b=cPBQr/M54vsWzsHXBKZd5VWbq3imjbzoBy/lRMnQkL5xAMGs6etYDiybRjEuGTqe
	Wqi4T0AphqhDD4r6ZSuR7cPeq9/ai1eALdyLeBclypDUUDy4cZ182viv7qX7GTZ6OPh
	ov01zHh56Pk21e/QBm61RmOf8w0oJhb76mDDLmys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008356370-1e22819f-bdfe-4419-9ca5-0d217f07e3a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da1d0d7458d365f327d55902cabde99f6a6d3ae6f76bba73f236adaf08fe2829
Date: Fri, 8 Apr 2022 08:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649405158
