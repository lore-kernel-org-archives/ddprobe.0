Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27D836E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 02:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653271439;
	h=To:Subject:From:Message-Id:Date;
	bh=N6aeThvbbVwEsbnyvD+lYI6NgSX7SGyhx9E9Vnu9O9g=;
	b=IiTLa2lHkybEaO095p9DbHtf7v5jA7BWAYUfmZOQM1OE1JzvBmxynGgoU96NsZ3m
	Jj+dUmyo0fh8aA/Ut7P0WKvrVqOoQX5TMydJJmLMjaJ6d1e3Kh1mKjElTN2vsLN+zWC
	TkoeRzvd1sFUs6GE1gfr/U89Pwx6j/I94uojGBIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653271439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N6aeThvbbVwEsbnyvD+lYI6NgSX7SGyhx9E9Vnu9O9g=;
	b=fuBkJQxY6SPkIdiNm1MHLrYdqEQKJs50WIhYt2q0P9JelHsicNSWSkirKWmjb751
	eKFt/cJ19jMS4aUih1S8j/TNo7EFQV+J7ba5ttFDbWOsJkFrp3Lah9Xd22XhUZS15KB
	79zrR+MR0NwheE6iC/JtRDQiWYSFiunQQTjlDK+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eea827c8-337a98c1-db97-4fb0-95d3-9b12e285e2eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad0bb118cf365ab3d71d1e1d8e67c8d09a0e3bdbb9ab45587e2390469efd1f97
Date: Mon, 23 May 2022 02:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653271439
