Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD037D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 18:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644777014;
	h=To:Subject:From:Message-Id:Date;
	bh=okRxHz3yXlcQP6Zdwku4T1fWLEwPsCIULh2df+dGjOI=;
	b=M84zLQbsx7Nr8IAxzAejriqyDvI9OXBttIJOlB1dcDIQrupJ2Hey1sdGJG2oU1T0
	1gi+NGiY7LE4rw+oJnPvIZJ6xlLW3ipgDJ8mp86Qg2oJx19mSsFQVvPhSaA1/PbFNr3
	cj3U1W+5maH5LQbZ6yQ/TORC7lRzy2qSawChUELM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644777014;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okRxHz3yXlcQP6Zdwku4T1fWLEwPsCIULh2df+dGjOI=;
	b=dsWE2NJh/qhFW3cmNFcrnLJ9GrU54pXLZMkyV6B8xpoTzCAWDjz1gDEmBelzEZIo
	L4FvESU1PF2T5VWyvhU9zUE1u8LBZUjd/NyKp6Kal1vEKuukMDSwGCs/MPeugAbUHg3
	cYl0rhwp8oD5NHlq+rEg6gbISGgBkFKhdZ9lam88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4598400-002cccbd-c689-430d-93df-25c5bbdc51b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79b141c9a16f3e077bbe4b32447a391af6e78de60f8e30c50d5cf3c88841c1f6
Date: Sun, 13 Feb 2022 18:30:14 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644777013
