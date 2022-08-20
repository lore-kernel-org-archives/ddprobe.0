Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6396A322B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661024452;
	h=To:Subject:From:Message-Id:Date;
	bh=fUaD0WlTTEKV1ca4lzgt3RMkMZmZ/Y0o3ykXiDv8WU8=;
	b=QFK/cEvfX9hByfke20UR9j3IpSo6jfO1dKlu9B7XarX7QXMKF6B+vAjF2/7v//wF
	53ft++xrdlNH0gNxGmIRRIaMtX8Dbyu89yuyzO0WHEri7gOepIdy4hYWWL+oPC1fz2C
	T9us7zE4hiLWgkcBVGmkEtxw3ljYA5SI0NGKpiyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661024452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUaD0WlTTEKV1ca4lzgt3RMkMZmZ/Y0o3ykXiDv8WU8=;
	b=IxFqVoT0wTUYf8VKEcl/g7yPmvDrcz5/TYbeebovJE8u17v8auFgnt4p9s04lGYl
	QZXOZF8YA0nAfQyPDnhLDoYMZQwQAhgpMIPFAk+k9D7VeVtNlu5Xevr+RJ09FIef0FS
	LgUPiZe1hmTFqCYWNkZknKSgm8B7LDEYPgA0TexU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bcc5bfd4-f74a8d5c-bb5c-4a56-959e-944f5f664f1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 162cc63acbb6a51a0f3a9e46977370c1a01748c3781ef6433a35b9aca6a0e78d
Date: Sat, 20 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661024452
