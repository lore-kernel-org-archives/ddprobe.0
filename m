Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EAA7E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654019039;
	h=To:Subject:From:Message-Id:Date;
	bh=dJ0jfgwBFiXVniUqXpBdI2i8Np10FgvGOMHwy82b2Wg=;
	b=hDqZhx0sGFmKgdUZhbF73vkiby9NOZ50A8gys+cIrAaRJjj9QPVRNZyizEZRrY3V
	atjXd3Sh/NkoK9Z907hGM2r/rdfj2t5ozRB/cbQSmP308ffpKdBA1uZvRKOVR2Cw1Yu
	DmNp60pC3icZ6fCEPfMWkTjXzWIkPlARoeERp3+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654019039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dJ0jfgwBFiXVniUqXpBdI2i8Np10FgvGOMHwy82b2Wg=;
	b=ZWJnvSik4rKxv76cQSqoz9/m4q361A4W9Svz1KsDFCWB+vzTrskyIcW/6/oCZvZe
	HuPHVu5XPWRbdyTJP5VSS+Xkdz5dCsfSrAQMBRLwKOxaInxKsstucPxfC/ARl7LQLHg
	J16UiArJxIJC7t6dYVmgMMx3yiydd8zULYzqWCE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b37a01b-9cd2ba78-856b-419a-a7dd-feb6dc102a44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e528cb203c5768fa8e871bb1d544b353d4e0cf15644fe51eadfc532b6b42dce
Date: Tue, 31 May 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654019039
