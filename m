Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA82EC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656630412;
	h=To:Subject:From:Message-Id:Date;
	bh=/BTCi93WQqqppWFC60DNx7/xwR9SmGe/CZ+Kh9Dea0Q=;
	b=kX7lyVC72mHEPPrTBQLjIYDO5ebLDdvLnDTS4oW+aArAukt22fJ22T3JzpQlZuJZ
	9kd9GcSKV1UzNJ188AV+ymdt3dmy9so8UwFGllRazEcPsXcNjHLdsvKOAXwDlsJ173/
	dd24EtClXNW+qkFYd6OXhkRaeZvbm9beWP6kAG1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656630412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/BTCi93WQqqppWFC60DNx7/xwR9SmGe/CZ+Kh9Dea0Q=;
	b=I9TjD9f9vVLK+Yh8tUTrUG0Ja14fPOlv2B54Ycii+2E/1lEJfRLKhkLyuWU2pd4j
	Ni5xdquIj/tlOcjuesX5PkfcUUraEVbfF6gsPqFGHbRsgJ8DFc/hEDNdez+qpeOzP58
	tFkfkiVvHTZ4612PKmvh5DBZtzjgzt5wlNSdg/hE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6de03f4-d2fd11ba-df26-44a6-b9c2-1c090f0a23c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44322ab6e0af8dc98bf872075777d94e0d9bc9c5782933c808467705552c1a9a
Date: Thu, 30 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656630412
