Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ECF3224
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 22:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651531978;
	h=To:Subject:From:Message-Id:Date;
	bh=KBZj19ZkJwoaBvEhSWPQgrM/0K/HXvYvAvP6+K1ped8=;
	b=b2u7ggaOGhL+A8I00yhmbi6EjPzL9X7caUEyRlT1RvW/m7/n52KuXv0ckA1ImHb6
	QfinrC8og4lt2eGTe25r5p5rhuBFvNaTdEMmFZIw/Y5sH+XNL+03eC/hMA1iUJUGvA7
	JAT2hCT7DQjbIJdMP47BvpSqfQCLqfoe1vtaI9fY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651531978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KBZj19ZkJwoaBvEhSWPQgrM/0K/HXvYvAvP6+K1ped8=;
	b=JZjj5aWKGCqaNQDj5HDmHHNy0gi17h95DSs6MfwqTsBUXUA0M+G4lKgbTJh1Y/Ew
	0h2Fmv/If7gvk0mrqIiF82TdSbzO3RGcS9rZRqXoLQ70LZxtdfhrT+8PE8zvcIarosS
	AYg8xGHrI+eZEcOQwVcdvXkAPIQPOx/0pwtZeKoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086fa160a-ccc7a7ca-e5eb-4ad5-bec6-597acab57c99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c54878530177704b64ca5c9315c1aefb8a6180e07c6199e19bc9c2e61cd8f54
Date: Mon, 2 May 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651531978
