Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159BF7C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656250012;
	h=To:Subject:From:Message-Id:Date;
	bh=MurrYsGKTpkbxcRay5HwavnP1dkn7buprYrDT7rMbIA=;
	b=LTbcAR71C9xocN/rdp1N9A63pX8JEM9j1hLJSilpr+HjbRj9R7B8MducJxdOS2gK
	chi+HVSUQwTac7AVOEzTe0tkSoZTa/+reuqwh7SMHrCAQP1B9M6a7boBOsLDwlJ2e7t
	Droq9EkJ15IYufmbtaNeWJAzO4po+hL/snkIMGrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656250012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MurrYsGKTpkbxcRay5HwavnP1dkn7buprYrDT7rMbIA=;
	b=jpS9ky5InWoWMzpE1hI9+7N+nTMsPQvjpwBOI7jQSwOPgqmAV4FvJfGYtG3TyMtY
	PGRFSo+rWTlLpQ9TNK/ueq71qzH07GAD8Q0VYbr4qzkQvVRSL2qd+HbOzgORpuQVu68
	tmTLl2PhGX1aP3nx+zvGob3kBRQWt0BRh6oTlbTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0319305-03a3f41b-9766-4fe5-be37-f3a5c2e1d1f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fa7cb314059df851787b5127b7b7674783f56fed20f50b0ee2f059a19dfd5a5
Date: Sun, 26 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656250012
