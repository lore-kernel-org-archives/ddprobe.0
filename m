Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF7A7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650829498;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZPGeT9UY5RWJf2s1i4guYYzVCr8eBE5u1grmHe2Ru8=;
	b=gr4IdmS8a421NdStltJffEnUeO5ATuJQ5Uy7FrjGyfCAuDOOAqSPx0BZP1ifC4UJ
	TL/YlX1jnc7jf33ibPYGtsLZNGZRMUiZNHM8isoELwVffOnh0PyMna8R+NCotbaLnW7
	gtieyUx1e2F+Y2U86ZkaC/xr0Tz/HEe1uweJZpMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650829498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZPGeT9UY5RWJf2s1i4guYYzVCr8eBE5u1grmHe2Ru8=;
	b=bDY+2LhwzPjbSW6sRn7Kx3V/XmxH+EfdE1FDJ3Ho1IEgQimuuwRFVuKHi+tKQvQm
	X9kxCciafVxQMpCRcG/wky+OsgTxWoM866Gqg6Q4TlJYuFwJOhfL9EpZg8nYEV+nVqH
	9CW8Y6vj7uCG2h2qXHQz66bF1ln1toUpvjMrDcDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d1b17cf-ee67a86d-ce08-46b8-afdf-45ba75ea9745-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecbec58cfcb626b677bf8b4f1fa7ff4b43dd5a3b19f42327b3618287294ae9d5
Date: Sun, 24 Apr 2022 19:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650829498
