Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB977F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 01:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652836679;
	h=To:Subject:From:Message-Id:Date;
	bh=GRXyzE5xgkiBaCDpYXrRMZroH7HhGjJMsJ9VKQDYASo=;
	b=f49H6oicB1MRmYD2RqYvsbAsSJbmqjPDFtzlawS20+y9jHQCmilPLEjSg7VBym8W
	abD0F6PfL2CkmDiibsVe2BbJCNXQU6J3aQLL5DQfJa7MISagtgSjy16YE3QzSiIXHWn
	wVCUT/JPYE6vNyGx5yZfQunQgT1f5PykWGklvohM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652836679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRXyzE5xgkiBaCDpYXrRMZroH7HhGjJMsJ9VKQDYASo=;
	b=FXgQzGlvSRiKXbyQVbI+Eg/GEkUNS0Ryt5DGVBYC18lMTMvNPKZDPEUNXxTRkt5C
	2R8EEp9Itw9nGZHBWpUGdT+DDOdMlzV+87StrMYsZV32ya3j9n8ULCa8zkuRl42MHbM
	4KcXs/5jZc80Nmd8jQ+51tMByg3S9Ho70UpcUvd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4be3ec7-d8d8bb51-28dc-412b-8341-bb8ca0fde962-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef98ca4cc6c15413cb0685dccf198d742df8a130127d8a9cdcb139567abdb2e
Date: Wed, 18 May 2022 01:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652836679
