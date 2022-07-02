Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CDE580A
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656727012;
	h=To:Subject:From:Message-Id:Date;
	bh=ZR91mn8ZB/ZKFr10JO8yMzwxdamt1I5w8bpii3VuQDY=;
	b=ceRSVvrRSF8WoLsIpKbVVILCvFTe3UhXwxbIqkZ8vSnPp1jx9hBDu/yRwKinrXRF
	QPLcpn2lDWVFsVVafZMp9NdX57uXrI51gOB80XEGdvu5RWzaRcWERyslyhby5MqZqY6
	GkWl7JlYymG/VnS3pLAiFOgKNootiUIRcileliyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656727012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZR91mn8ZB/ZKFr10JO8yMzwxdamt1I5w8bpii3VuQDY=;
	b=d/1JcHTdREmWmK/lchVSzdSV3Ldj9kEhBgEl0fTDQ6fb46ZDgMAkDG3pQkB9p9PA
	g4CzMiYlgtGUn9bDIJ4J+1EvU+C7rKpwcQDejXCBLbEYzY6j21r1uhOFb8OunOFcw0N
	HzbLDKcdEeGGBp16EKccnWCY7f+c+/3rJFfi1u8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bca003f4-090414eb-e754-4abc-aabb-dc1f00de1c80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3f46e403c17f418a36cb20a26c5564183466e08e0d8168c0a285dcd0b03d00
Date: Sat, 2 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656727012
