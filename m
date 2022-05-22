Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B5D257E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 13:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653227459;
	h=To:Subject:From:Message-Id:Date;
	bh=zxVxtUfDphZxVDFaMDvR1kaKCuSTrIv9nqZVyXHtXws=;
	b=RSfJ7DndhSL1Q2rxEEL0MxMUYJQ/x26Rj2lOBiKi2u7vngaL8sdBYGPD8xxpXMEP
	johtrttc8gTwAtBp7XjJvZTaq1k6GNF45n5lQP7A+mIXZ4NnPSIfZ1FdfMRSjaOiCKP
	RrrQWRO2totqIeBdiwLODgrsI/TaUz4lgYN9ufOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653227459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zxVxtUfDphZxVDFaMDvR1kaKCuSTrIv9nqZVyXHtXws=;
	b=CCa6Q4NPBKkNIxl4gqXteHx+moFjNZax0liFThEtspsUwGAaYVoLYeOaZPhO9M39
	CBaYjlZZTMOVgcHDda61IggNF831a7rsb0S3hpIzsGExFU+VAJuHcRQ3N8BCMIcex5T
	LmeWwbbGIJuosReSsHAYub8f6Te737rVC5GXL2NI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec0912b1-36865174-d1cd-4c5a-abf4-11129af14d98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ed9362c83394275667e57e80129f97f851b92c3e44d2f29de6c87d8e5147ac2
Date: Sun, 22 May 2022 13:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653227459
