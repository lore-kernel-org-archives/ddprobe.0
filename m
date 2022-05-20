Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219EE7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 12:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653051239;
	h=To:Subject:From:Message-Id:Date;
	bh=V7e3s9ANZtgRktVCe5exAPMlKciU5Cz21V7R46/FYYU=;
	b=OMzKPHviEJMAU9V1vqhL6c4/1srIFkTYvlPH5ySC6uCrdaVlxbgPzVy6ru3oygp6
	IYdwrfL7t15y6XNr6OKPXeX+2EFC21aTwdpH0S7vQk9g01G3d0FzYOkUkDPIMda5Mfh
	diEmRRBgDtIjU5o7d/ry1Du+tdORbL+5QN51bUzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653051239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V7e3s9ANZtgRktVCe5exAPMlKciU5Cz21V7R46/FYYU=;
	b=GY/1mQ1RFtR9ks1ec1a7TsSyw5yPEb9R3HwyUgxnsBl5S8natNfTFbtYJLA41aUo
	NWNlDktGsTGVO+oRvxE2r7p2B/QzFiG56JWauGdMvdBlY/XkY2QyXALWjhwvOwx4jkx
	5FjKj3qmnNit6DtUbxJE/B2lDAIdq0m759bnVVhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1882b9b-d0670afa-3b28-4e3d-a6ae-a49d1ca5695e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a4c254a56cbeeea148a05e65a2bb572058c763164c5f797a3d0652dd53e5b8c
Date: Fri, 20 May 2022 12:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653051239
