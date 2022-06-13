Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452FC7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 03:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655089739;
	h=To:Subject:From:Message-Id:Date;
	bh=bQW8LIjEg/8QXCiqu/abS0jOZUKILTE8U3kiacx0fIA=;
	b=LQhVRyFkZfgRzFrDiL8e16ioRF3GwGz4FcGbmqwtsa/2BrbDR1UGX6TgAnrut8O+
	CrxIWrHZOcbFl5vfK31MFpjRZ16um9LE2Sk1S00PqkFtVZ+uQ912MhNliBsyIBRb/sd
	crd0hD9ulowSb5/bTjckQHnksdstgaFWCGblq/os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655089739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bQW8LIjEg/8QXCiqu/abS0jOZUKILTE8U3kiacx0fIA=;
	b=WEZ3aZj4V96Th4QpORKbPVX2S0MYGPtnlFjVZ6h4tW2o5pOx9YbF65whvJKdmygL
	v1cMQNEFdzsg631n1YEQwPBqbUSfhI3zkftaphuqwaiYTXcbXAEaHkQN8+UOCEZqDoa
	12QcsKf/6VGu7+sf0Gmp1MuJUezPgVD6DqExBMqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b09366b-67926ca6-6e5d-4552-a27d-92e618774450-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3444340e59db5a4338dda6486785f04fe219a27209eebc4c241411b051690d73
Date: Mon, 13 Jun 2022 03:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655089739
