Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC57E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 04:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654231679;
	h=To:Subject:From:Message-Id:Date;
	bh=oc6fIGWdfHyOY9Z0P9rimsWitYtwHyysumk+R/okA6U=;
	b=LH3ey6d1ofNLOXwt/84MANxyKJyM+Y/hkG30Up76GzPVkNIklRPe/+PnLTvt1iHF
	ToeqiYTOsPdwa1hEwMc4Abi5YoGyY7Dca1YJkGlB21Dn6xTLxlJWkNkHOEZKKeDdiWh
	HHwqPx5+0UwNiERghotoiB0rDwZbD1C8OB1MUwmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654231679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oc6fIGWdfHyOY9Z0P9rimsWitYtwHyysumk+R/okA6U=;
	b=D0s1/NIPAokYa3tdj/N8IDRVDDH0jqfRcoegPm/7RZ/tQ7ZzA5GaezJTPHebT2nA
	kW0Oy/Hwns+4BTjOSKo73wnJgRL/ixhf3Ifyc7AKP8SoxD2LHvz4DHBfqdPNqt9mZdE
	QKOcZSp/6Wa1iNppHXCVyJABcaDfCSKV1GFJ4v7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127e44149-16452658-d310-4fd7-bbb8-092f46578224-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce26f018c4ab0c668427223df17e7b1d131d490d276b4bf212e0c478d46f8de
Date: Fri, 3 Jun 2022 04:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654231679
