Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECB3256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661179252;
	h=To:Subject:From:Message-Id:Date;
	bh=BG4TjNoxqCuWbdxOJ8jFlCyMCUxK+VAa4a1Rf9HbZco=;
	b=KMEH/WWJBRnNgklh+qxgEmDjTX99bvACE4+9XXBVfqBTB34gNJesnQvI4juLwC+9
	MH/5p5+OTvmoAvxbTZa4A9KHVyPlNI82pmDNPqu0Dkvq10BrHH6jc0y5tnnQXDsekoD
	F/3DbGvd4DRVCbl6BRTjnC3dAzv/7GDMZgOLNbBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661179252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BG4TjNoxqCuWbdxOJ8jFlCyMCUxK+VAa4a1Rf9HbZco=;
	b=Z7kxIpmk27dZDDy6FiIGvssnYZ/1eXC/dR0TJg77nvxOxDfwO9OYEEGunu8f+ECV
	cfqT495Tizn5ML0Q7DNpRnJv8aQe1dGv33fBqwrmF2SXBi1Vd4KeYucBt7zFm0S0I2z
	LVf+eG0l+MLRSurZeAsYSg2RAvA73QHZKrNya9ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c5ffcf19-e6ca3f97-b438-4b3f-95d8-98fb46b4fe34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e33b6339699fe9e4f85f155a23619011b3130f181922bdd15ea057b8d4e2b5e
Date: Mon, 22 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661179252
