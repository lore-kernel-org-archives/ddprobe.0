Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238327A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656115612;
	h=To:Subject:From:Message-Id:Date;
	bh=c5nV/RF9fcciJ/G7deRVtstwtHts5e8hHWmBaR2SOyc=;
	b=B4+ogX99QamV8qmDB8Kp9uz3mZTmdumkAY7Wa8AtmNtEScNDJqV/ItUE8uV1cSEU
	FNgFo3GOybICeyLWAueOlTF9b4GmeU00F/Ta0gZ/W0Ust6frZQJ5SNEDRGzrze/+n3e
	WSRtk+CcEooMoVd5NuDPRrZVx6Zxo7lgvrOzWNkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656115612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5nV/RF9fcciJ/G7deRVtstwtHts5e8hHWmBaR2SOyc=;
	b=DL91pQVyxbNCKSYuszn8X445WX0SAlXDUWKss9zv0Zha6X22kR6NDD/snkU39LY9
	IgLUJmBLT/cRSSo+gdBjKZX6odODa3xImSixgJrKN7tCPPOHzvgbLAb9Hs1F8xeyauI
	Aj5Q2W1obXF5hGIdZhs3h9IxVKwMKrJYrOcKFjSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181982ecaaa-eeac913b-e573-4ce7-b86c-839002f1042f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca5df77d70cb15ad326cd6ca4b3b844d82cc47874024f9120ab56ba128acb0a
Date: Sat, 25 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656115612
