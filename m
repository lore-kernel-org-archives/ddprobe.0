Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A4917F8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 10:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653905459;
	h=To:Subject:From:Message-Id:Date;
	bh=Onq3ZYJDLWqni4ZRgB/lBwvXwEdMNqhymkPyMDmQHyQ=;
	b=gUDRaghgzW2DriXQEAQRNDmuj+yT029beLcpYy6FbHBOB72xcUuoIvtPhhIcPOWC
	tB3zM9uEK6sVqwv2ZSM9n5YGN6RuXiEISHWZRp9PkdeRwqmg2cTzzERNW/Bp6+dzW64
	fg8P2pkoqFf7tU14YvzVGZxVWxtMXD2UPYvFZkbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653905459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Onq3ZYJDLWqni4ZRgB/lBwvXwEdMNqhymkPyMDmQHyQ=;
	b=jMn1I6uGkZYjgUKf69XeRqSpUH6Ga7u3o5SdrKAs6IM1IPghnSW5kTZK8p+ZKVHC
	AYmUvzqi382P+jdBmuvCcYKYzjgxB4dZN1YicEwfVaJqYH5gVNH2ej2rx9D3DSVZsvj
	A2+aEjbTy3jqgIL9KGbgUBvbZ268Rj829WElMHic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811472884d-c529cb96-e49e-4b98-b9d8-aec682ade93a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d2c8c63074909922365e83b1446fe9ea013c28ef4b58255f2fa9ed31bde8fbb
Date: Mon, 30 May 2022 10:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653905459
