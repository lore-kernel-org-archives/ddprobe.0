Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E573C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658173612;
	h=To:Subject:From:Message-Id:Date;
	bh=Bz/RFe+h4FBzuimn1RidNKBhLpZAtdZQfekTJfYz1Cg=;
	b=DxATPjfutaaOeVcIyeYbINBpkqDn/DpOWkfGTM3HV10yc+fR0jVJ91ZFM//U3rkR
	vVh1uwu9iOsccu61DP6n1dWXNYBFlojwQ0LzUR9A7OMUM3Ii3mBNgJBYA6lsybhC7iP
	F4nDpLULwrpxvYiXxRB2OYfgl2/gpCyW9kwLgtk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658173612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bz/RFe+h4FBzuimn1RidNKBhLpZAtdZQfekTJfYz1Cg=;
	b=Dw10KBTHiOO/i1k3GLb0ISI7nBMwK2+lKgqk3CtNfZ0aseDWt0RIpk4l8udiD50h
	v9nqXWQs8PyAedS1qgtnwXT0lf1z9i2LV6gccBnln2fyI6G7DGfAqN6Fkol1ylY5TJg
	Vd9msWjNQMttOP6Cq6/Yc/lnXZ4U6hFaZRrOlRUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212d96121-3802fe2d-411f-41d6-bba8-2155d8bb69b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c88680e3589ffd9e9187637818a92edcaf347c43b87a6a5d1738b335df0794e
Date: Mon, 18 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658173612
