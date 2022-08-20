Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E227B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661039452;
	h=To:Subject:From:Message-Id:Date;
	bh=/bG8XQnSsmZ9vEbVi5CPqi+U9b098GPtbLxPmtsyx2w=;
	b=hJtMi70ycIA4DyoXKd9edxSzM3u3cC6eCzY9xELWnh35xYNYFvRFxDQP96rtOsmW
	sjKa5CFGpD0tN1i2PkXZEe2PAjT4RA2x0g9GxIXtsmR4KTmbh2TCoprVBsR0qboLAtz
	MJdIeuNIeHr6q2CufsS5i6K2+WF1rlrBvp2jLaQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661039452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/bG8XQnSsmZ9vEbVi5CPqi+U9b098GPtbLxPmtsyx2w=;
	b=aIMEKTSxCJu/kmacUXS0M0Cr/PSMhkgNtTP0l+opv8rQHsYsLrLv8xhFwT9msWjd
	o41NzJTeB6oCoI/zyZ9aiuhfDg2OX53MY7PTYc5EHGvaHTE+cXido7UdDgE8g8uEgiW
	ErTwK6hFDQXzC3bfsF2h8I07dhzUGBcDwxCIaZmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdaaa19c-ea4992b0-97cd-46c6-94a8-2c5236b67d5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45dcfd1d1386c5d3326cfa388b1c75bf482ec6757c2debcfc09d5a86f5175449
Date: Sat, 20 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661039452
