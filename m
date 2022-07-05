Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0E87C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656979612;
	h=To:Subject:From:Message-Id:Date;
	bh=iX3sTc2KL5eXX0OBl/tYexne8bstc9jdBi15bfM0wUo=;
	b=Fn0mhXxKzpCHNKrx1689R1k1X86d1UoveigV908WGbn3wfEwwutcF5zubBg+jKm2
	TE6/O8lEpAKVM1jJs8xiIWaO4InimizaDY6nefoGvIMIQPrAZOTzbkob9mb/TMbOugZ
	F4VrsRAoLEOoHPbNIXGio8ofjxe4s1H4mHujFo5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656979612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iX3sTc2KL5eXX0OBl/tYexne8bstc9jdBi15bfM0wUo=;
	b=RFXQgcqkxqkV+jtmYJrO8WRtSG3TSv4vS+k0ShpkqCAU89rSzgm8+wXt26mHKvse
	JSUnOCETv6gh8g8Kuwxtfq2JNtB9AYnTA0tfYfnvWKOSmW63IDFZqHvN8tBusxagR6H
	evqYyz3dYZc7MayB1sWwdAqTTTEAnvvTBWdJH4+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cbae6253-73bd059f-4847-4bd6-a470-881235867e0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe0c16d5cadf59c04a99f8e36fff23a8760a31327ef7f13ae0daee417325194e
Date: Tue, 5 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656979612
