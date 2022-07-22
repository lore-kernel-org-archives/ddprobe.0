Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0885F6AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658517412;
	h=To:Subject:From:Message-Id:Date;
	bh=zuiUwAVc6Wuhqu9QG+Aykt849EsiEQfgYWhbty6rYzQ=;
	b=XxLj6hwNscj6ojMa/hHL2SC0W4JQqz0QRc1zbJ4/XYCACTQvtj6JJfE1foWkxaca
	RGaqiGskZovCZsO0CeAaNi/mCV0swvG2rOTjIeYxRk62YjyGkKzMmh6hg0O7/vGPq4P
	ZdH6pzxMXk4APF7WeRsxyM2RwobEBj/MmKaeyDUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658517412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zuiUwAVc6Wuhqu9QG+Aykt849EsiEQfgYWhbty6rYzQ=;
	b=IMypGMwiIYoUxy2L3DSp+p+1RDBj0KFOQA1Eu+17fN7L16O4P/r+Ebs4ahYkzW7s
	NOvM9JOxwPwHTHKRg6/jwC9n8/2tdgsOKoqbUvDH2kA9wc9fpa58PWP8VCuuP4wDKAC
	oArdjC9OA65qRJalqFqpy6WrZb9chaW5zAg3155o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182275759d1-d75d3de8-0d6f-413b-a6bc-114d43dc62db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79f6e5df1853157aa01a96a88b9771ef14d9ff2b6247b2df04b762dc523e28fd
Date: Fri, 22 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658517412
