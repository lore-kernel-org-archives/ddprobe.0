Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CEC1850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656675412;
	h=To:Subject:From:Message-Id:Date;
	bh=HisXIgmpWooMTn1OeyLfhM2wzegY/yTIhFEzctQsXr0=;
	b=GIh9Ug7El2Fm7nVT3lE5DnYSEmZnoHbOIFu3JvdAV9QpcPYFlUoonWqH1NODDdIA
	ZPK+ntEsMzbXu0PVt1DtZOWZKNQGeZm+8zH5vECE47jUq3LMj/USG2Ak7e0B6tRxUR3
	3FCfng4jrndT+l0+/YQNv94VT45Lu9URjGgwWBJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656675412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HisXIgmpWooMTn1OeyLfhM2wzegY/yTIhFEzctQsXr0=;
	b=XeS1d7i49o1bSzSLuOT5hFpqPxjwEGoVrDTJ8ymThKvalu++VTW8hE1/APzu4Rqf
	BOdfUZy/R507WkdcB6Mc1sVx7YXxyFG6cBY4NiJMPQyScXv3r90pJVOhITvdlA29RyE
	0Fxv6xweHgAa3fnd2Q0QveVhc1vfr+xXfJVCTHfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b98ca950-72d6947b-2b5c-4d61-b204-60bf9c8bf72a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f460ca2805fbc04bd477a675aaf16926ffa9c10c42eb7b44366796c49c1b5ba
Date: Fri, 1 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656675412
