Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAB01364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655117279;
	h=To:Subject:From:Message-Id:Date;
	bh=vIxeih/2joMU86Noh8CZwlqMyzwLTTBOR+oXU6NyO2U=;
	b=flnsPijVy+FndWcF7kPWPJ3Y3YxR5JZFaDyosJP/uZOb/rKncNX7QFA/V8B8rtsR
	prRX18ZOV/rc8um7AIZLXiKYqbTOaTg5pDuw+gOsvsJMGYPeDp4WoAxi8Y0QbySLYl9
	y/m51wFAfZ+8UG8x3emy9VXy/cRdFH/ui7xGbZI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655117279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vIxeih/2joMU86Noh8CZwlqMyzwLTTBOR+oXU6NyO2U=;
	b=c5gGqqFQGDLTfSZHOm3sYCFwQV19WtdGRw3WAcoG/F11i1/fjPrSure5mVROGtRx
	tTKdPkEjJ0ENxbzCrrT5hsVKNWQrTufOgmimvHXlHMw6knzconUxBIS5ZSBD/JFr3aZ
	hX8KIiOWkbt9gkYgo6tkaog/dR+q87S2BEiwIk/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cad7015-051036a9-9985-4982-b82e-ec7c84d8f329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7d54cfe3ffd666938ade0b72b7eba4f0d55a0561c5fb14e1bc9a85f5008aac4
Date: Mon, 13 Jun 2022 10:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655117279
