Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675222F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 12:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653136139;
	h=To:Subject:From:Message-Id:Date;
	bh=FW/ns8WB8+y8c+7RPjrtoldZCvQ+dAT9uwGAmk24XUI=;
	b=blZsqiyUb+3Kfbq+5piCcNjt94WDeVM0JZw71JujPoIjD+EKQxDLDzG43P3tbUDI
	ACIPevNHkIonbt2dLnpBW86Pw8j2KAG1JB6wI4GB6ue31JpcKxEnrX78oADR8bfKHOH
	ZK9lExW1ZXOIm96qJUA4MGivB6aZyNN/xdc0j8DA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653136139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FW/ns8WB8+y8c+7RPjrtoldZCvQ+dAT9uwGAmk24XUI=;
	b=HzKYg6TsokQAoy5lW5Q2UoExxEbb1ixAJLRdksIs50UllkTJwVRyyp7KqAgRy5dd
	8o4D1Ri47KAaee2JK1eUF2iPlQ3losqJ0WrAavbHfxnjmpSaXfNqXxro33N4Dr692ZQ
	r8zaVU1Ohx5KuBTZ+COZojBkZnwIoVE3I10JWA/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e697a3d3-440200d9-1230-4639-917f-6c0039e1b99c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe43ad315cfdb18247182d06423938b6ce62963879cc5f534e3540c3802f2aeb
Date: Sat, 21 May 2022 12:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653136139
