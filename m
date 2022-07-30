Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677173FF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659217852;
	h=To:Subject:From:Message-Id:Date;
	bh=C1iis5j34gS1iFRO4j1tMS+B6+7oJQLe+eCvIMYkA3A=;
	b=elEEjpQsXjGTc/9EmimLV2TxbP/R2nfMT/NQzDHdcdCqsWjlg3pwOx4fN4k65qGm
	jU80oTRhyD1vLf2zUto6IRpfOmkc39O6B+CDK8RYE2//fCqEhQElZCqFy2u6WKPdKZY
	laf+DRitoV/t8CczodHzqwiVx8BLbYlI2VRoLgFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659217852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C1iis5j34gS1iFRO4j1tMS+B6+7oJQLe+eCvIMYkA3A=;
	b=ZHzGeLYqKh11cZOtTWr7jSOZrTPAZ6phEHYMyN+cCPfWGsJjvIMqh0qA+kjbKh06
	e/GhTQjrjnGU9ofcBzkxgrw+eVVaRszZYIO7rc8gYItqsuzvf9ad4gYbkboOThp6TOa
	GukYtMagDPIomXJu6BTzyO38AbZtObKZInh0GbsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182511738b7-8863395d-d46f-44c8-a498-0102826596ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0cf1136db31fb4dac16dc79c70a8b6d18404089fc1ce3f770503bfeb6078d67
Date: Sat, 30 Jul 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659217852
