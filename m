Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACB933E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 21:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651700878;
	h=To:Subject:From:Message-Id:Date;
	bh=ZSMKYVwcuWWcicil53SAqigrHPJ0BrkmuM4oC0xi6tk=;
	b=AGySh2vq+R2oICwcrSttjo5Ej0d3vkHWc1ymx368utm8D0uuux1NAWhddcXCPbHl
	k35MPAZUOuIjTHsmM7nyZuP1n7OgO38Pab2zbIan1Qs+yuyYd4Pgq4ttqG5vX11201N
	ShjvB8q6KzJRlFpCqKOI9vKQkC1FhoRMzAIvzXPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651700878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZSMKYVwcuWWcicil53SAqigrHPJ0BrkmuM4oC0xi6tk=;
	b=S13Uf+iLszuP67JiFJSlA/kY0VNED54MV7eQFQwEc4QprYD4z7VRetiFamqG4+W8
	4qdtFxuRB3sWqaPSn5imn4FSLSaEvN2k3s+lL8+kAZ1sQaHuwsGTVzeK6pQx4AtOklz
	qKd4VlzCG3Nb2cFvPbIRYJnLJSsaz6YWvXFncyuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180910b4ba5-0687418f-b3be-47ad-9348-b64e05910c65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e91a8e8bc7c2e4b0dc03aa770d50ab80e23c3f01f9e7372463c9ed367431ef08
Date: Wed, 4 May 2022 21:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651700878
