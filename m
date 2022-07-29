Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FCF7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659062452;
	h=To:Subject:From:Message-Id:Date;
	bh=CyjPXXW1WCtSCvKd7sR9FFp/I4+IJ39LMaVQEj9zs24=;
	b=UPmynUeA4Bd3Hezv3y+Dxa0K+7iKf2xSqY+KFsoOgBvlZNitn/GflD80avplHV2D
	AolduMvuyOFmabvDpIX6yR/iZ6Fv+tYQnHtMs+BbnfEeHEBxINdM5kTd06WKrDPoA9T
	Ae+sOL6NbOt2Cosvoqy+4FZA2LGdB0AWR25/jMxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659062452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CyjPXXW1WCtSCvKd7sR9FFp/I4+IJ39LMaVQEj9zs24=;
	b=KL5USKKl8UCCjY1VBjL1tgsbU6iPt94Mo3aLXl7SwciXONtgvuXJQgzU6AS6mxEo
	TsQ2ak6YB8NFp2O7repBGRh0w+Nd1aMqL7pULb+oCnzDgkLkGEkl1uVeAb9OYzJHhK0
	oQJW7YUhvY9pkUd6U0KQV0AzJt008wh69hWo33s0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247d4015f-a4e2c290-debf-45fc-bf9f-1208af8a4fa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41df8c16bc68342c8b64be6314d67328a164849df8192040cc3447dacbe8772a
Date: Fri, 29 Jul 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659062452
