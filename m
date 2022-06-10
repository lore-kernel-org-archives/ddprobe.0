Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0283F7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 02:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654826999;
	h=To:Subject:From:Message-Id:Date;
	bh=QRqthzbFNh0dD+L68DqkTkrqGDXuTMQR3V/cyDdOQso=;
	b=V6CwtxkIFFF9Ujdu81ytXH1wWWQQ1CP418Qgx1MDKwXmP5vLov2fCFJ46A6lfUJg
	n3+uitL0WrCpP+WaYGZxLUB+otxei2Ji8VH3Trzy+DdsI8TwrUe7qWN5IclZV/SdeAg
	NbtULBjTKsQqbi9C3HEs30nqXw93YdRtdgOklCow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654826999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QRqthzbFNh0dD+L68DqkTkrqGDXuTMQR3V/cyDdOQso=;
	b=h+WFSlqjN1NWQcFgyNUCwHXiEXiOBv4bIQXC7rTOextTLOn/8soe3la6d2j5NV/y
	Tzieh7IuW+h9Pwezsl5w2F36mPZP+HrJpv0irvrgH3GnLE5OdHVk1faJcNOMPhf6+XF
	gZtkivDHS9LEgOkptHP3IDwftfRkQO6+aYyGDAk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b601dc7-90266438-6ff8-4c50-b4d0-a5400d0d5dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 673fd0b44bbf2480f9f4eff19e3786f2aa8c7d7e9594cebd5657fe32f828802b
Date: Fri, 10 Jun 2022 02:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654826999
