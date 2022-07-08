Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB6C2579
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657294012;
	h=To:Subject:From:Message-Id:Date;
	bh=VpnCGwAxI+Jwc/wP/p9+yaZhOo/qGani4Gn0i4smVvE=;
	b=kgSxS1eQ0z+cjabpHQfdpwMugy9xuH+U4FTMHfQmd5H3Ha8SuEYM6KLkchMnCJQI
	m8OY3QcgJMzcW2pvqJGO3Uv2096SO8ufV7nxwViuRZ8zxHVc8fEOBNXKLiQ4SXeDCD8
	zswV7UylsFe92VHK9rQ3s4tZJfU+vONGLwyL6Ox8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657294012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VpnCGwAxI+Jwc/wP/p9+yaZhOo/qGani4Gn0i4smVvE=;
	b=FXrlEdwGx4ox6otNTnD4uadZHBw/XvhIC/v5EIS8SlvbZyiWHwFhaMK3YHqaWiDL
	+GkknYvnCkaipFkGpoYuYWm0OUu2eLxuWDVriWs1oVhuYP3iBQPg8KP/xaCUXI7tJM1
	pW6niIlEyA4BVHiQnjuPvP112zZAykTfSibAH/u4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181de6bbf7b-86a66ca1-5f7a-49df-92c1-2eff5dc09d5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66d4aff6fbf0c17b6f78eadbdd8ec5cbe41d286214d476c9bc23b2a4e4fc1145
Date: Fri, 8 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657294012
