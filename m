Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350266010
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657053412;
	h=To:Subject:From:Message-Id:Date;
	bh=MaBuwvV9obMKxRvlwSjJ75nf2Yy+vg+YQWI9ge7v9LU=;
	b=Z2447qbkha4vfVN7XrRGz1s3eroypgg0R+QzVqtxDUGpjsx3vwOSz+HyoEeWf5QQ
	xMGnqzZB3AAoEpgSzmeI67RTF8nx2KIxQsyrs7KEqBR5/+WP28lu//zHxkNLISs9IyR
	358scGD4EIe9XJFBkhLyym0bRqJdDMSPgEma1+5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657053412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MaBuwvV9obMKxRvlwSjJ75nf2Yy+vg+YQWI9ge7v9LU=;
	b=PIoXGqw48ypZBb1FEcEuT1kPJGBea1Z3fIkVax0RjEsuigTyjkspwGO9bts+Ikn5
	T9PbOcHKv43liIGgn+UB+tI3QXSpoghV2N9JOdA6doAupBrfzgUZih8dBzUzI3OWZgM
	xIpuEfg9u0ec8TOW1SU8+JUEGV4Z988BMtiSb9/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0147bb7-e5516e71-bcf2-4b01-9d4d-91ed98f0ec73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e27ba1b7c9eae0143c9868c2c9ffef5e0c4c65b90b65de55e4e5871356639c6d
Date: Tue, 5 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657053412
