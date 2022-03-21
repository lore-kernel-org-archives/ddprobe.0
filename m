Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C6E63E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647882084;
	h=To:Subject:From:Message-Id:Date;
	bh=p2DENUi43fE6dV+9luY6MFfTYBWKysvXE+As1pOMcLk=;
	b=h+zrbCcM4v8Q0QT2sg+uR4Ef9gVaKOw7JcKwppwARu9z05yS/HSdWnd//HECa4R1
	sxeEQwqVMAgtkIqdTZXU+uCzgJuAq0oe18ffImC4v2tlUz5dLLaVBjArCfcTFXZZYsC
	Oe8wyeeQEpIFHX7NmI7JbIw63Mo827BsaK4uQGvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647882084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p2DENUi43fE6dV+9luY6MFfTYBWKysvXE+As1pOMcLk=;
	b=Si3Cu25xsz9AZuT/Rz76OFBMqKoLG9e7rgi3D+xiVifKIFUK8VJUQBOj4QqHYr+h
	hqjfM8XwiWKszX8GMZbWgV9nKMiT8O3evmdDFMoCs/s+3soTNq4KYJP+iXGYbZ2Zc/L
	eQgbfKkE9rlkU5cdkusamRvwFaq2e5MdMfXM5TOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad6d2177-05eb62c3-4f48-454f-85cf-e09d23255f9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2838979e32a8afda50d9ec9553df3c3dbe393c811d454331412cadd63d1d02e2
Date: Mon, 21 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647882084
