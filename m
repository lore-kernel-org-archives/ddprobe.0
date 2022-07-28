Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCD810E8
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658979052;
	h=To:Subject:From:Message-Id:Date;
	bh=hd2Np7pb0sSv75AA8yQAUrRlvLwFcEQAYUcwKVoJ6i0=;
	b=Kiagyo4uAbUFsRGJJBK5CgZZA+c9KfqtpKfWN5M99sVhoWWSVtbyHnKuCpGSZVhv
	AN02Mwbkl2AfKrt68LS3tA8LSMpyw6OyhhYBGzIM7XXbRp+P/nz4UypO+aAbXU5VST3
	rj5HtMcsWBBhmBDTDZ9jf3morM5n30Wjjj2BEYC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658979052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hd2Np7pb0sSv75AA8yQAUrRlvLwFcEQAYUcwKVoJ6i0=;
	b=TE33B9iyRBQEvdbEyG9t4l7r5wFrTzPSPlG0fkE5Ke6Y2UwS7z2RjqlYjLdR6dIv
	ismEUt6fM3YccO3BhDRCOkE8BuzXSOIUlMcyh6J7R0S2IH2a0jvQqGyWbiSShV2aT53
	P7Rna0DIQT+tuMH4L02JGLpO82o77yovbREGtOlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242db6be1-1ed8b86f-b063-4241-ad4c-ccab37eb9cb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e57642f39b87054f1ef8438ab3630e9ed274d3b67bd2d7522bf24da680f2ab36
Date: Thu, 28 Jul 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658979052
