Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B253B7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658273812;
	h=To:Subject:From:Message-Id:Date;
	bh=f/4ySIEraEqpdAqRYocgu0bdJry8BY78nxnMELQEx34=;
	b=CepDAfmThWGHk+wbkFDPwu8g114M9cXDXbiEwqz6cPEw2bA3DwyIn9/QGGZVOzas
	n5rwFTWHFpvN4UQTz9ufzk1cxGIZbGWvNIVf76xre0mBsSVxn6HgRc6nKAv7V/hF3eP
	f1Z0fevwAXR8LGDM/7Zv70rZBRyHuv2m0Gcyvwxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658273812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/4ySIEraEqpdAqRYocgu0bdJry8BY78nxnMELQEx34=;
	b=LbPMk40fb7ytEuQVbG4cC5KGxmY2N9KrHRqpqDFB6Xn+S5OIQdrK/LUdsyiJEKCe
	EV0Qt8KaO4+Uf2knJNsqnbwyFXXPAGs5expqdAzrQbKObBEwZvRcQ8N1ZJVaXl7VYi8
	ACRFxxPiwfXjl2TSAqSwE52Mzy8R1yx7pUsauOYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218d24fc8-0333bab1-6b3c-47c9-977a-a59773629f48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad259dc4fb67d126538301d560096ea4a7d2c8230ac5cfd6c7a5a5ac339a4dae
Date: Tue, 19 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658273812
