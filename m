Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF124688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654455779;
	h=To:Subject:From:Message-Id:Date;
	bh=AumTC9fKql9ExiKXvzBH6KGEtfY4SCn8/q5p0W+2CK4=;
	b=YKOB41/GHtidauZ8JqbzKTZTnFj8D1HQF71OCIzi/ABjnHp+MoHYGzW8wi4JR+0k
	QwU7lrPeYti9MH7pUJhVEuE8NfV4/7Fy9bmz4Ue4E6zCWp9s6YyTmyq3xmZG5txjJIk
	tkbSAGRKlleIt0kbPsCKEoXsRCMzPMKC6h17PAws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654455779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AumTC9fKql9ExiKXvzBH6KGEtfY4SCn8/q5p0W+2CK4=;
	b=AekJpPmLbQLH1cdwzDQP5dDI2HMJLuZsdXtiuWOfy9mvQehxHzRkRnjHVuRzRuTn
	syY3nSTvxhCfxznpTqmykgOksgNXBPqvRcTjVx/RqSEeW/Mo+2OdOD5wJKHwKT9dqlr
	M1dcKZqSYcmRNv3sY2eunvqvtv3JXfvfQyjZlbiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181353fbfb7-2a641516-c95d-4622-a79f-9e5a895e1cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76311743e20b2e56493343e91f56e3c6de142ba05862e5304545b6a3dea8e33a
Date: Sun, 5 Jun 2022 19:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654455779
