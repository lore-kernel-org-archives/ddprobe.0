Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDAA7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 00:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655081519;
	h=To:Subject:From:Message-Id:Date;
	bh=iGnfgggzNgok0B3tbHLdXgJAcMKFzk0XWQzIpuZcW2s=;
	b=Nb4dsQb7Jit6oteZAFkxJUwLMemJkx1uorE4mXSj3bN44lgcu8W2yDt7/XcaK8/g
	1WMB5bsIkWf+kE/NXudShW7wD2U6RnIkxhMYabnMhVggyVgNo2EIg9ZLrSzk18ojaVW
	paw1YaHlN4LQ9J+0MbRmw18onM59HrqiSDLk2p2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655081519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iGnfgggzNgok0B3tbHLdXgJAcMKFzk0XWQzIpuZcW2s=;
	b=Suz7CWCjiBGDZVP/+Q8QJGiAouE+2b/3r1BLAoETGq3pNLaRYwp6IzPdPZNhpzxh
	+Gi0BCEp6rDTFNd5/BVKTSUhuk1WmjgoQAF/shmXLaxiS/q+pzqgMRf+7pEFJUBSS3y
	PvCUsEp1iB6T6uSSp9Kt8KgIWDcC1OzSjHywhY9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a8bc8a2-8e4eaac7-b1f6-4812-87ba-0ae811fcd5aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c44f1b4903294d6917eaf4ea9a1eef78d23bb6784a080dd56a4da6da6861348
Date: Mon, 13 Jun 2022 00:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655081519
