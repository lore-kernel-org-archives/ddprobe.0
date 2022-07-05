Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ED3182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656986812;
	h=To:Subject:From:Message-Id:Date;
	bh=tFqz4qPKq9aq0PTiHoMorwBDFZcb0y7GGWPzKn5/2vA=;
	b=e4f1WTKq9ReOmYK2wOLZySToNHZs/KIXEUFj/LP+9p/gSf8J2TuvtvxoAhvUMxfl
	CUwvoqxyN7sCZo4nN3viwnRZsOYC0wKPOBpZAHIHj4f+3OUF+f880b4DDDAz/lnvPd5
	A5SYv8CHuS5X2iVVH5m/KPAGuMi+lTb7fIq0c2jY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656986812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tFqz4qPKq9aq0PTiHoMorwBDFZcb0y7GGWPzKn5/2vA=;
	b=Zyd6PYR0ToesmCXhAg/ZJ4/0oj1THW8GkooOv4vJAcm9TLka4D9yN0IFI6fFVPG1
	Ab0pTGlwmfduAeOsUj0GzdVbwSlSfffMRu4XtA4v3lrXvFqAj0maCO0Nb7lkyh1H8Xx
	M0VgtYb7iSepRSpwECuUOgpg/BJsu9QTpq6KK1cU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc1c3f68-4a3d72c0-7d56-435b-bfae-7d4e5a5e20cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2010b1a65d8cb5c1fa31df97803e578eeaf4ac19e8c2c46f278b4d6490579f48
Date: Tue, 5 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656986812
