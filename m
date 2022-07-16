Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33EB362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657953412;
	h=To:Subject:From:Message-Id:Date;
	bh=esgXGUqWen7GYMw+7CpGZUhs/gc6Ey8kp40RmJ0I6Ls=;
	b=Dw/buyJVL+Ity7+4feFN5wXmIddIrHx2kikD1eCT9HXo9FR3H8b3NIRcvuf2WPpb
	Gmiu4dF9CoFjmaNjpSK6hUjoheMwra6szPNcY/AT1EmIlk30kCOZknlUdUVKmJX2IUl
	FeIT1LSGbP9pv4ywvP8GHEsYH6It5N5Xmvv+Uews=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657953412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=esgXGUqWen7GYMw+7CpGZUhs/gc6Ey8kp40RmJ0I6Ls=;
	b=K6eflPkWMFdr7Fh041941VNF7rkL4TG0PTzCyrxS+aG2XMsbL3m/6cXw67M5d0pN
	1Pp4C4aqVIxTG5PxeT35/qJBIKYFv5TBqueZuXgWgIR7tkADQPe5vYpqkAEQElhVHPy
	VVWt88GEPdqhqDL+/Ceg2rHniR8Mxn3ePmp9wKHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205b964a1-4d79c1a6-6f04-421f-804f-734670c54aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 617af989a10480406c26c8050d17d3ee4b3b0ac947130531d163d8fae46aeab1
Date: Sat, 16 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657953412
