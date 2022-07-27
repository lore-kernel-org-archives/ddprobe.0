Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3141A7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658884852;
	h=To:Subject:From:Message-Id:Date;
	bh=DRpklT+ARZ9BZaGrtgcfXY4zinylJdZMedsluwoyf+s=;
	b=WoY+HE1YfLNP2oF/iCVsjN6LqSQNbzK+ejXPdoWQAS6t9vGjfTeKjYdzzl1j9VEL
	E9fQM6jDA3EA39D5iPqtlLRojVrN4HlBznbr6Yv81HuOkVCIPdF+px6o0PrjeYLkLe/
	wdpm34Ig/8Zs74sgU1QlwJyxTKb+yUKzHXzQ67OQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658884852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DRpklT+ARZ9BZaGrtgcfXY4zinylJdZMedsluwoyf+s=;
	b=MFfiuJ0QHfOx3dDkEU0XOdsAYCoWt5p0k+y8kngq6C86/dzCyjvIhfdtiOLZkmrS
	FnFgwQWrxMRFJHjXM3YwZx+7SjV20g+7J1sdLOpXVVX5JQtF8FsWeW8rkrYOP2dvchS
	j6aeEhxbmNctyVGLgFv4MBRCmGwrCIcq2yflIusU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d3e0b3c-c09d537a-ff8e-4934-8f78-d8543c67f2a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c374ec7fb3b752db1fffa68d90dc1190fb730aad49d1180c033310eed0cc521b
Date: Wed, 27 Jul 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658884852
