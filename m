Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CE0629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653297599;
	h=To:Subject:From:Message-Id:Date;
	bh=CaOufoesoZYOH06VqOksASBmhRZnQc145QJ7B431cXk=;
	b=Y+zBEnGE8vhOFquvM7ULoltGtP+V0xQ3XcE2m6XFfc6ulVZJUKGXzdpMgSzKRrT4
	diWF8rt5Bf2rQE5KgYrVOBemF95CC59yIGvndedOzHWOf7hD0xwM6R5LAqaFftbrxgD
	E/y6Gqwq+xhiIFqkLeOvcZD0Alz4bZkdY/YHtX50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653297599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CaOufoesoZYOH06VqOksASBmhRZnQc145QJ7B431cXk=;
	b=UlbnDp9NjPzZkQhnylaNxvRw/pOxdca3W98+IlB75CKijDXutKBcO+LC33NU/Ru/
	7o0TlKHf61Pe/d2chGkEqXSQsaXprxlZwGElui0STioAKp/tfQcbZbMGOitJedyp30+
	J2NNePD1X08Y8kmWU8vo2gd8NLXOcvmYBLapuif8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f037533c-eb1f98a3-43c4-42e0-8abf-0b40894c56f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8173e36431419a1d5c0ea4fc30e580a3e6f78d9e3d799e48daf657b5594cdd19
Date: Mon, 23 May 2022 09:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653297599
