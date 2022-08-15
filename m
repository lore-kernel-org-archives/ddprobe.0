Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1EA10EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660534252;
	h=To:Subject:From:Message-Id:Date;
	bh=f5f0HkFVW5giPbHjb06tdgzVAcMTN5O4MOknSTs10KI=;
	b=Uyf0/qzjc3RhK6JoI7m1RNrlPiLfH2jy/pLcEXF+IHqS+zATtemCOUwNCmctl7Wr
	OhHsL4mjaEKsEiWoSwPn4GjvJ7eZE1EC42Ns4pP4uP57N4U6xtXrxBTDOnDv9HlpQlb
	/H/ueGauJKT7ezmMFGA3pWJ+eLFT4Cvo3vrxTFMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660534252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f5f0HkFVW5giPbHjb06tdgzVAcMTN5O4MOknSTs10KI=;
	b=AFMTXPHYDxsAhZZpM+Fba5zfQrnsxFRpBN0qLbTF/kyzHdVmAUyeJhTBQUfEdGt5
	0pXwcMmWVOPui4r/yvzCGZXvNVrDPZfsRvHwVaosO/ycg0yOsgbE0jqrvopVQCVoTC4
	1hKHnQx6dGSefHZmVMqAt8ic3Lw0aSF5hLweoCJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829f8de436-54625310-2921-4bf8-addf-372f3287d897-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9741a5e339dd06561520c79b6a016161bb092612b6e213ed871263c881260e9f
Date: Mon, 15 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660534252
