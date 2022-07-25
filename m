Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CDE1873
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658762813;
	h=To:Subject:From:Message-Id:Date;
	bh=IZuBktjHc7QJkAg+SZf7fBVSSTJ4mPaaqv5QeWc4VrI=;
	b=CAcT7crIpDFyMhlNBIO2grahYetvQDoRnuuvSqrzNtJSZVd3znhJ/jvgB458lmMA
	IrxgAQj1uS83QvnTJaMULW3lFesTjmqgeGHI+uYAjQnJXCZqwWIcx3IGGmbZGJzbe9M
	9UhKz5iUm/Dv0XvOPFzU4Hp2LqTrQy7vQYRy6hkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658762813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZuBktjHc7QJkAg+SZf7fBVSSTJ4mPaaqv5QeWc4VrI=;
	b=YT/pX0UluBRZhI3pHlc0spasFQXVnH/DwHyxktxo+6TLp05MZGRSZnAk+ADwMKSl
	TvZjIrZhwBjrF5OlEsXQCrpP3re1Uhq2M3O+ZLDAoImY9Wekh2YLjQsZmZ+X+ttIBmG
	Y1iczdI1tMCOa8U/UoYo08e7qsd6w1EJ80/gfvT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235f7db98-dc8748e9-d79c-469b-b899-d69a37227510-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 445cd97cdff74e3f54dd4d18054cd02b01deb097c48a2650cdfc0ca5bccbabca
Date: Mon, 25 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658762812
