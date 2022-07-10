Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113301872
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657472812;
	h=To:Subject:From:Message-Id:Date;
	bh=zDYP7bdqj7XaecH6j77elPncsqerygYDz3e12Ssjffo=;
	b=hxYe0cq+Njy+39y2qnFIIes0+DfW7Qy/ydwrllOWWySVxNCnIqB8oVQ/agBQ7Tyz
	lChC/HnvBOPKtvqs090G9F9sxRI2oYOm3bU5OFX0R9Y6qBQSX2xZeXMn0Oev83aUPff
	WkL+oeVDS8BTzmlshP5m/83LlAyCeWu3XHaHUzfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657472812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zDYP7bdqj7XaecH6j77elPncsqerygYDz3e12Ssjffo=;
	b=AM1u93iW7ow2cVjC0uLqUuQcxXTG2J+u5JtMNen2bDXBQXxxGpjaj/w1jVmzztQv
	F36sqOxwKT+T6wQWBWQxObwKzA0u6Vet9e7WKcO7iYsAPUwMfSvf+LM+zTbUpkEJ9Le
	jtO3zymoLgI1EN0ukagjmvV7Wrd2u/Inox8dyPHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9140523-bb3b4602-5f80-4336-85c7-12fcffbd8747-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fff5f7261f09aa06eaebdd32dc76917b0f6f53b35f7f33639a9e70f223e4b48f
Date: Sun, 10 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657472812
