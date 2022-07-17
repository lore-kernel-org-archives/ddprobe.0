Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787C36F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658029012;
	h=To:Subject:From:Message-Id:Date;
	bh=8sKSzfL+mM8SqXNaUvWzlqSB9fjQIGK9rULZoa2GAjY=;
	b=IBeWdF9bb0m8xCw+nXUCpzEhGPy675Pa+jQk0Juow9JUKGYLLqMyNis8Y9klsh1T
	T74qWWo/nhjhAnXBSlT+dzJ3WYLlbeA+1vw50WG00DQQikNnGDmmAPdgD2CxvPyqScG
	XSAroq8mIEYpWtKm8ihwtDQVAO3QHch30tj3F/00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658029012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8sKSzfL+mM8SqXNaUvWzlqSB9fjQIGK9rULZoa2GAjY=;
	b=hm666AUWtzyg+hYY2SD2aXeybYXCSSeQn8zNDxowgYannPZ6o8LU69i6eEK3LuCV
	ryDIitKk07nrJr6yWfnH1Swxrj8M8LSwboVe3tNm2iMSXKH+OBsb/+g/k3VWdZd4vAT
	wVmiUvWpd6rxk2GUbiCGJeDDDeYxusZtWA6Aff8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a3af55f-c87b678d-ecae-4dd9-a495-053c07422e7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa0404f0edf0fa27986ad8576e1b3d9703d0708cf01b2c248888d1e21d437464
Date: Sun, 17 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658029012
