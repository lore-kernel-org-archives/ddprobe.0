Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB99D4A14
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660939852;
	h=To:Subject:From:Message-Id:Date;
	bh=R7r4XpnL/WXsujQfRWwf3OQVpjL4+tHR5tZSaoAp19E=;
	b=f72+bjDslePg+GtLSdSMLDIh+6zxP9qDQ5WKMOdfVdY6gjy5bhi1wKURdKUfbsFY
	w548W5mkNVVoXNphbSM6um2CEnCYGScVUNU6B8DsylZc/fai/uEDbhGr/MYI9SaW2wD
	2qjoUOr6F6//wJnsKnCRqCHzTLAsretz9qJ5f8XM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660939852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7r4XpnL/WXsujQfRWwf3OQVpjL4+tHR5tZSaoAp19E=;
	b=fCKx9yA2wh5S+lCIQJzu5G1Gn0GWdhZOEKz5gvY5ifnQR9qjP8P8R35YlEdRCBWB
	lXfL08itXQF9lo8fXTBKVdQp7MGWJ4ZttFA14Xkw5OIm/MGUcxGl2UjbyR2jDMhxKJi
	v9ImWvFwAOFOvBjSJw4JKoVKkXydOM/EGzXaLEl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7badb36-8fb87f01-1b1a-4de8-9bfc-c2056a639595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b5843260f92476489444e63960d77cd4194dfcda2598a31c3a626262b6e286a
Date: Fri, 19 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660939852
