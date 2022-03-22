Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494857E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647954984;
	h=To:Subject:From:Message-Id:Date;
	bh=58c6LHQMB2vOX7Nbps+qbR9hxSKGWAivVlqQSyz970c=;
	b=Tdqvomz5qOLZIpWA8Clzlq+GIHlqv81rSZaRXj6s/4KKb0FVbarjyrklqbzS5ZKZ
	lr9RIuSP/BYYE4ltgpM8PvL5UkF0XEnuGGVuLULEzFymL/R55ldwGEGK/0YvK1F6mVp
	R4TOkX+FTZvhpMJfcLQeFVweeXVhF/HmKy7MTj7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647954984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=58c6LHQMB2vOX7Nbps+qbR9hxSKGWAivVlqQSyz970c=;
	b=hvGDkyP53a1h5uoP/5942TjRXfV7bx6Fe839BTgIp+6xyamvuSfdEURxAywgCYuB
	625naJi8y/aG/oqZnhXKWb/qBxb+lD4yn1aekAsdAqLPEWQt+0nfVCqet53OiQ9zy32
	/rWh3zcg02dfvIF1/2RoXkyWj/lLVv6IBjjhxtuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1c57f07-a0966370-7898-4da1-939f-9dafefcb7c8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bff72d3eb72fa9f9dcd2db0e296c42aeadea3f365005f8d4bc3206e031bc35ab
Date: Tue, 22 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647954984
