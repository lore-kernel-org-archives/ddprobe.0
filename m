Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2323A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657591612;
	h=To:Subject:From:Message-Id:Date;
	bh=fpMWK8MWhnOtbsSpQ177tPMZmJwMSllzhoxqoqn/BCQ=;
	b=lFE45Xxuwz6AG0wiBfou1hMNiQ3fDNs3OmbKuuAWEL1ty757KpFPKppMDx4wSm2e
	N3iwh4kF4pVMfSh38YgMTfjH5mbp01Am1O0sXYfj3DV236iIs4dTWgjDDRgEIWyh+GG
	KuvU2CmHs6C25n+VyeWUwVBcCPcYZGO2golvjO44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657591612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fpMWK8MWhnOtbsSpQ177tPMZmJwMSllzhoxqoqn/BCQ=;
	b=Eo4xZSXecFp8NZIVf8/PidIM1zC7VNIDPeaWo1RYwkYPhP+FqKkRXm5i5OR50G0k
	7Iox/GQxPSKhEqwrRalvwJJAAtGag3zGzQSh8KopA33b7whcWZdTF0NKj6wkruuTVv5
	V4PASnEz3xEjx2RDEoylyyJVvrvFjI9e7otvwycQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f028c39d-2ad079ee-5835-40f0-b8fe-fedc79a74037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e845b08f4581b7f75f181141f734305dec198f788f69dc4147083a884b7ee10c
Date: Tue, 12 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657591612
