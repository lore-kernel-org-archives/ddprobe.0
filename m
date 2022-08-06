Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E3D7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659753652;
	h=To:Subject:From:Message-Id:Date;
	bh=8Bp0Pp8XlkUioVzxd2aXwS9oYt2k1W/FyF3wKrJGY5g=;
	b=BGRrUbm+0vGGTaoVYfW9fD9OOvmnSGczAghZeVXxe2VqKGwS0GctpN4tWQzUmk0G
	qNcRVpNIErAk9DUAcfa2wPGvLk+oTbQdEwIkjTwgx7kgrQwp5cRtrn1U44km05DJRcA
	ERSXtr2kgSy5ExlyVHq5xo2N5tjT/l25xmDXBl+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659753652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Bp0Pp8XlkUioVzxd2aXwS9oYt2k1W/FyF3wKrJGY5g=;
	b=bQ8AA/8hJoGSD2Eu+hEe5nsjg4mpr7S4VjBixNmwZZbVsxX4OiB8jPwZqQUVlvcG
	hNf1CvbIGFoR0mnGj/htJHIyKR15rR35T3EDz/8cjmAW0Uf+Yx61ppOHVIJXX/Y3SQD
	qGYLsVHC+VEO3Ls+YG10MxsVAlKt6ByuHg3LerMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827106e14f-aa792b50-cfd2-4929-b043-760b905590e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d659a846f6d958b07258038a4c57c745e5fd24e08e7df605dfcd744324c4fb6
Date: Sat, 6 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659753652
