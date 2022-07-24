Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3843207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658672812;
	h=To:Subject:From:Message-Id:Date;
	bh=IpsAuXx5M7Z84ETY+eJ3RSrcNqJbeCvItNxvheQygWA=;
	b=diu3tQDnPalg/We062CPu6E5caF80X0QrVe+nNS+bVTilV/hcMbWAigPzTPR2IIj
	f7qOAPHrbFWTsHDvMzdS/h+uy2SvCDG3K9PhYuyqnGSEAtvGIlcCtGyDl0eNRKYtt95
	kL2k+VVOzz8pV6hXVDN+s6dPJ3068gwfMl76f3yQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658672812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IpsAuXx5M7Z84ETY+eJ3RSrcNqJbeCvItNxvheQygWA=;
	b=f5A69EeDgeDB/ttov5tEv5H6/eJX86HIB6yx2rWaWL9KiwwHlM+Wy7LSyM10zo0I
	9GIHaTxKkQBwng/SDIBb3tvCP6SDHNC+KsWjy+oxwhaw+fOjkyCwtforMYIJ3O9DL5P
	q+iLymOy2hCtiBj6aVoSOvJw7fkzKzCQHPks/V3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182309a9149-7331917e-964a-40e9-97cc-e03a88236851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acff1ae3ff94c9ac531a9558e467f106c8c8561ad2b181197622c51200499d41
Date: Sun, 24 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658672812
