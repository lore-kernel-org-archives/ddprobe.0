Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D063D86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654554479;
	h=To:Subject:From:Message-Id:Date;
	bh=pFo4KP08xWbmhW7IgRBG3xxHimBGHJXYPCoOABjrCVQ=;
	b=Se++E1R+8d56qTvWksarGKa5/podQb3IypeuO8rjWDyurDwJ2yeTubzDrlGHVOWv
	9GKWxvzzs7DEqylJm2T4kOc4ZcT9t0IUy7kjpGbiTjrHa1t5t9cr9tSOOSeuzjA5naH
	gUTWMFr93wodXWhHV90wKZC9PILOHDopB9cdS5V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654554479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pFo4KP08xWbmhW7IgRBG3xxHimBGHJXYPCoOABjrCVQ=;
	b=ZpKnZWFfPsVt0PQfVlc2FUAnIk6/NuDb0652FM+emlhUDe7ePl/9Ato73KX8O1ou
	d3U6HVJifI8q4bHN/EsMMgqHNNFJ0f+sooRzxwgTodk4IZVQuMlm8BeogSTnEay83q8
	jxJb7j0CtzOHVWzuBzR2AShuKLO7RuH6Mp6G3v1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b21ca9c-5cae5d55-4b40-40a3-a454-a898a5c10dce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bd0ca7461fd6c6875a92f3bcd4b8236d14056eeb06603c0dd3cb15219428f3f
Date: Mon, 6 Jun 2022 22:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654554479
