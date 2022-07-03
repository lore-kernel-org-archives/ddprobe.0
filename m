Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A31FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656852412;
	h=To:Subject:From:Message-Id:Date;
	bh=wu5QLHK3lM8UplaB14Xz/UmDcNeyccpI19JFOyRONbY=;
	b=eWhC05VvbbZjvBakNVEWA10IC8yQll1kZNA8+gO/ongNRxgmbHYYpiDGasgdw1BN
	nvXrrCX6zf7oLrDaLq8f7N0/89WNc86iZ9UiU5gpZMBiJJo+zROftbIPefdMfjZWkF1
	v2cOc8+92EIeAbr3aKe7ofb6y1X0OxbPqmYJPYaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656852412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wu5QLHK3lM8UplaB14Xz/UmDcNeyccpI19JFOyRONbY=;
	b=TT8EHhZo4MDBjY9y73Oacejdt9mcWBrAKU+8P/tRbQIsUELJikgRPhvcxS0sCLNk
	G1NbVnoff98/19XNFCx9yInxi/eA/A3cjDHv7ZUW+aX0YUSXh1GUSC0JSXGLM/0OpdH
	Y/Ftki0PtjeZVv4wAuS6jpxWBZ/BEzetvkjM+hTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c41977ae-d7a1e119-a3a6-44bf-85d7-815c565b2200-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 317caab78dbd7aec33b4cb61e1e2a7f214034dc0905ddc9e7771d004dd305e10
Date: Sun, 3 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656852412
