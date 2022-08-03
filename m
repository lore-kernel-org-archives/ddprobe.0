Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ADBB3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659552653;
	h=To:Subject:From:Message-Id:Date;
	bh=YkBCeXon7z/02xqsJADuAFM8HbKe5p0G22QeGv2PGi0=;
	b=lCYFD1K2XnSHUULYgD/J2bzxlqBrahUsj+DhjD88a4Mp82jp8Q03kzdDbTQl5YNU
	hpm+5/vt38dvW4fPd08ERNxmMJarVIKkVvVatdgDW+Lv5iK+8OZworht9j/qNL7mBUC
	iplbc0Zp5Egzvh632xXXSalpN1jwJ1SAUIpayJaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659552653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YkBCeXon7z/02xqsJADuAFM8HbKe5p0G22QeGv2PGi0=;
	b=G7b/mquvfsUomHx4ZEcNKRqz7d5fkjBzFM4EMWhkUKqGIQpK+0wUaVmajBle0LNl
	giG2rO1FRrFfrWi3H73bdn5D0GW0U1rACNG+25ZR1m/UhF8m7A0syIkV8U0k+N0v6Me
	AhETPbaUDu6K/Ea5eBEU8TF1U/p5s4Vm5him/tT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182650bdd48-c604ac20-9cbf-4745-974f-0e0e466a515c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1958b06b4b44a7f5043d2ad6dcde8ca556635c1311bad7d6fdd7768d1343e4e4
Date: Wed, 3 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659552652
