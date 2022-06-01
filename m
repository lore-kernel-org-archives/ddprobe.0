Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB287E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 01:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654045859;
	h=To:Subject:From:Message-Id:Date;
	bh=LcwHDMeLu7LoHDB2Gs4ON0X7QSej01S9l/WJhV+s3X4=;
	b=T6pHMwzsNWO/WfzGDPs6/ALCJ/cp+53/l6sMZB6c/XRfZhhsypI5TB6SmVLFJMyU
	YMrPaBkcizCNVIueFL86voqM5FEmeaJexelWyP6SvGEoGxv1CUaC1YG3kdvQHcjDw19
	7fgCBW2iuWnWBFqSpSp+AByNBQYkuLLXRvjG5mTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654045859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LcwHDMeLu7LoHDB2Gs4ON0X7QSej01S9l/WJhV+s3X4=;
	b=hFy2Orb4oV+jVV/HPz49IwA5ltLZO9u+/PbKMCozxkHq2w4nZ7QBZfL4Uk/rY7jB
	cH77s7TWUvA6GgdqtY80IDFZLnIKEo/uU3FR0hWncPB3U/spdKe+LyTxp6K0ojcc7Ii
	0DAVuQ0Y35WJ9v96XpYSXVLLe0wXthpANCRrcFFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811cd0dddc-c4a5f7ac-aacd-4dbb-a2eb-f65b5d37e77b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0598e63b65bb17b0334656b634883006eabd39037b1b2884622004cd4d25bcb
Date: Wed, 1 Jun 2022 01:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654045859
