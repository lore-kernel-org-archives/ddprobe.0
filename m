Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E1F17C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657069012;
	h=To:Subject:From:Message-Id:Date;
	bh=fTRRgIv5HQ2Yqk54O2GU5Tv/14/EGaoUcU4L47rBXCA=;
	b=Wp1RfqbW/KsZ3FnLX3TUKl58anM5WAoEylSoYzeoXRK51X3KQVDqMxll0RV3JMYi
	5HFFDTFIEZLoPVFukJMFEIl7/o9UZp4Ja3JgI1oYCaBgrRfSeSGkXI7gfkQbYJbsQ1k
	5cqavzfnoNMeR8yTSVqJTQzDLZMiM9Yri3iXbgb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657069012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fTRRgIv5HQ2Yqk54O2GU5Tv/14/EGaoUcU4L47rBXCA=;
	b=Ey37BHsYsxnBJN1q8f5s2GqrtG8LTalDXUrrLL0E3a9iw2mmFTTyx/hoUpiszJ7u
	0lcN9kWeQAujazG0Whohg/+vWZWcvOsfbJUkpOl/pKsz/txkj6xLgvtkB+s0yjgoEZO
	RA14dSsGIk4DyGKvKQDyzZUIZNz5C5c+3AU5h19o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d102853e-64069147-5009-4759-bb90-5bf5b1ca337d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57c38710572f08e0bb913d3e2c0ecf9e7b49208bfdf720b285874b051484db45
Date: Wed, 6 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657069012
