Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABFA7E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650096418;
	h=To:Subject:From:Message-Id:Date;
	bh=bTOmYmVmgbFBwyLKswyxkmSTgW8IOG/RLLEHh5f9HPQ=;
	b=AdAqODZUt3qqBCNU0WOXQ09x4OoY0XBqlmaQptKjyW4xIlUV6nFuyuaxtOZOIoF8
	137rbT39+3sJQsVH16gX0KkFbgx2foTWfxoLslAzvH+Xs1wK8ph2IhgRLXhFnerubWu
	u7q5oY2wGa+o+RSFUAD1U2LilcVWu5TSb1tyfp/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650096418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bTOmYmVmgbFBwyLKswyxkmSTgW8IOG/RLLEHh5f9HPQ=;
	b=dFlOIohQGZTShij3dyFR8HJuzEJv1fs5aSbw+IW3DSMQ1zltiyHaXNDeV2WWmzuy
	6YpT5ZrlMqyCKAo31WiZ/7Q0iaW6oD2wKAPP42ot4PxxrLzK8so15Y8USsbEKRayqF0
	2zMcGlW2iHgl61vgwLNbialokXtFE3zAlhkhuTtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018031692de1-5dbbe26c-50c1-459a-bf47-038d8f04b8a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 237816b51c778211cd3b72985583b1cdf31660cca7775a2b181b9f83891a1d75
Date: Sat, 16 Apr 2022 08:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650096418
