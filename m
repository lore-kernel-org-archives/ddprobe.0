Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3E5806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 11:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652615159;
	h=To:Subject:From:Message-Id:Date;
	bh=VthNnaFcPaoQc84sPGEF1j76f3+S1eMmCaQuLh+EFFQ=;
	b=aPocKrQMhpFzvktrSU8pltBQzYGdhItFpmK8GmGclPMq8MxJGhiv+wpykFJ1SP4c
	Gz89hccOX3P4oi5NWr/AzfEy6QtY0dPayX0KHM6wa1cUMlhVGmxguAHmuPas99YYuPJ
	C0ZrmJ1Jn3sla44qeNuLVmKQuTDZplJxVyVuAp7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652615159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VthNnaFcPaoQc84sPGEF1j76f3+S1eMmCaQuLh+EFFQ=;
	b=hWOKHhboaYoSN0NE9TAQjOpFT3rGl0DEMKOF91/AV1BEAAHgMLNWdLbVbKJgX6Iq
	9hak0xvIuHfXyT4Z4SUdKiB3cvyRoeunKNWH8TrAECsaFgVDNo9y0wh3zYvz9HRfll1
	rHPcUzcwGAgoFC/wv3JcM1ABu+UlfkB6QMzTuKts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c78a1ddb-d2bde34a-4dd1-4129-b640-1ad3a29f41a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70f1774057c9648ea16133fcc291bfc47fe5fad49b080d0d9e9665aef587c12f
Date: Sun, 15 May 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652615159
