Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DE13D65
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 23:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654300799;
	h=To:Subject:From:Message-Id:Date;
	bh=jYUKpQIktL9L134cs26CnqGvg9i+4tnrM7fD9uF9ruw=;
	b=Cx952PCfRn0gDpJzB/OwuJlLVi6gB+el08TkK+aiCGr+8NRFKIzjVTOHcSs7SLu0
	Gk0PN/tilVtlBKODJ1jueD3gLcn3zJwafUYkBYB0uQ37QWsccU9LQABjusynexaoix3
	EN33rHge52xxDxH1fhE4FXnnHZq81YDUh5dCe7jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654300799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jYUKpQIktL9L134cs26CnqGvg9i+4tnrM7fD9uF9ruw=;
	b=I9+qq9mr/QHAcNC2lnOjRTrRqV5sfjVTOcSpir3ONlXb0i4GDr1jmg42SIkoDjz/
	IaoZ5LRlIQPMpuVK0baXJ69LI3+jZsEbFKKyCMv4eVURNNMbwp7KsWBmshb3MPf4O8O
	EJXLuvCq7UpjIz9vvN/wKtD4hCqIR+hwZJX8q/24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c02f13c-f67c4960-2915-4a7f-9fc4-b63796a78ce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b920eab4d9208157cb7d535ecd5b275a83cde854b2b023d323a8f84b2fa20254
Date: Fri, 3 Jun 2022 23:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654300799
