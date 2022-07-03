Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7386A1854
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656806812;
	h=To:Subject:From:Message-Id:Date;
	bh=pVCol4Ix9mTiGOa9a3GpfhME9W/FOjNutZbUUkv7TvM=;
	b=dbhw/35yXjYSl+5LjENQ8Z9qGzRV6+EYS+uEt6LYYTQKeTyqtLstSYjaPBZDAHpx
	OIvyQU4sLlMQoXFavILy2YR7CricPa8qZcDTSQt/kxzdjwmWWQGBJ01a2woYc8uiqMz
	py7C/mwcqnOVeLrxEwgUZJTf3LAqTgHhDQZ4cyIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656806812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVCol4Ix9mTiGOa9a3GpfhME9W/FOjNutZbUUkv7TvM=;
	b=TJY6JNHZqBlXpR5Abl2q3Xej/e28bCKzhDM4gc0JgVhsropTTRmtVeCJspYMy904
	2aVz1yGcr8H6de6Gj9F7GBg4FNmAwyW6ARpMsqLGe5kaoqRuNRU9iyZ+hsceFntuzz5
	dVtkEC87DlZxDgpQhIw/EGuMpWO/NGijd8DFBdak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c161aaa2-c0a2dd13-ddef-4faf-b0f4-5a62584b517d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a87e8502abd78b4ee5296d5c9cc5810e5e917495d2f58fe676458efddc24858
Date: Sun, 3 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656806812
