Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463464C9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645227084;
	h=To:Subject:From:Message-Id:Date;
	bh=wF5zoXdwyJOcpv2ZKKZSLW1gziLq6BRln/Yu/RGnLac=;
	b=jb0jEBgTKPY892OAr55uYOLqJ7b0vvEs59dNJyS1trsS2Imq1okA2IiovDBiT5+e
	GUXlvN7sFrcGBNBhGEsXot7Dmlc05ZuMkJ244eWYBqkNkmivuOmpWniblwHz2Sb0Qvo
	QD1nUT/E+cwQx6Wz0LBCWuZdInncO1CEZUn8HjNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645227084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wF5zoXdwyJOcpv2ZKKZSLW1gziLq6BRln/Yu/RGnLac=;
	b=ZBOdTZ0zsVYZ6Jm3CSqxLM4pzfP0WpH6gz1V541182TBxXKp7HdaZie8k/elfQve
	KiLJSg2niws6DZxWn1xAkWVJ8CLyp19J7zfo/oas+rYAith/N87B1+0GOwxF8MNB0IP
	U44M+eG3W8A3Wt71wgnd9I1DY2oKJPx8o2Xzuu/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f2d0bd4-9318af26-37ff-456a-a88c-cf5d90b652d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 275eb84a1a5ac5a75121c6df1c791f2fb6bc6a9b20bc54030138c7c4b29d41c3
Date: Fri, 18 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645227084
