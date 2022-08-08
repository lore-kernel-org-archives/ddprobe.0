Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5387B185F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659925852;
	h=To:Subject:From:Message-Id:Date;
	bh=IjR4jzPJPify8PssNqVUGAzQsrAC3DNA7vVqxU3//+A=;
	b=jjOxbJzYAVtb851KaEceVdLZwgJSyux/fGTQ4Mu51F1c5S8FHzbZtOuYnLRd3Y/n
	+U667hp8ADofbg3e136tH2IEGSMdGH3D8iklu4le/JUjDKh3gobYzw+xPwz+9CV2SdQ
	XP9C/GdSPALIVrIwA9bxblrcSLHPFCIa0L3E17Ik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659925852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IjR4jzPJPify8PssNqVUGAzQsrAC3DNA7vVqxU3//+A=;
	b=Jq+z3xP5PTNd65MA68MdaDeQrpaFKrcA+Uqjc61uAkOsJkHYij4uDJRCZZsawN4S
	DyBQWeCyUuJ424luSTYjkj7LMXetWqLFjymQ5jhQ8gsIMC3xkUxQ1mYa/J+eE01cHHc
	FaUOwNT1NZpGq5EIrZ/NNhnxg4AhETGyo+ChQAeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b4a71e0-1c961969-72d9-4615-ada8-18d9d25746ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7980d6b6ae49a12bf9328b52f83149598682b9ae544440fbf5ecaa91b21de64b
Date: Mon, 8 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659925852
