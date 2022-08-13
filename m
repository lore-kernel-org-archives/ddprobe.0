Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6547E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660404652;
	h=To:Subject:From:Message-Id:Date;
	bh=In9rSndqqyfrhQMlFlgNafcy2/IfWqsxECTc67XbF9Q=;
	b=Mwo1fJmJ4ztz2h1uFZ6Whsa/OTUUr0sZbDQR9PK+qVB39lD/iiswyViTnrSstLmp
	kGB0b/XCH+JeBLa3+9iWJscjbVksrirR2mi5dEmgyOFrrN8mL4DjQvQlf6zQ81OwZO4
	Jy3KEysl9nXctGLD3q9jAds1dCm7E+6Ag2HiQ2i0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660404652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=In9rSndqqyfrhQMlFlgNafcy2/IfWqsxECTc67XbF9Q=;
	b=HMECp1JUMGZVutnH/ZaPXReT/WcK14PW7f1VLqW1eQcSuvVbP6cvrrmH2FtzrfRN
	SOu4k5+rNOF4VpCd2SDInT8L47ZTOIWtiRRWUjO74lOHK0j7UgKUv6CC9/GvWqJ1mip
	G/YxCkkmOZvh1WokGEy+E8rlAcsl1yOEcQ689bCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297d45a4f-b8976805-d698-42d4-9b7d-a702dd42024e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07b590097a4c898c159f339cba9b857bd744755d37026427b3dacf70f41d9dab
Date: Sat, 13 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660404652
