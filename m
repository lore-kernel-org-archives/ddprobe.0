Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1DF1844
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647323785;
	h=To:Subject:From:Message-Id:Date;
	bh=44czZGszJZ9tmezAdpIA9ZEX3QVufpmAadSkxGo4nLE=;
	b=dWfOvANTKxCaEjLzXJly+GSI3hb1p8ENZ4ubX6qpdrTdx8JnxrMAwdfuT0O6xZtf
	lcPqOnD+i65whtboNqLAe2082Sc4AcXKh2d30EtgdD0p+YvN/XuluBMQTyM12gvRhoY
	NossmDvLDVIps5vqAqGRYknrxwD2c+cB9IOZYAjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647323785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=44czZGszJZ9tmezAdpIA9ZEX3QVufpmAadSkxGo4nLE=;
	b=T4LMdMEx45t8HWRBOsJK5NTqZjrGya68U13Ujks50ZRFAaIwWQMdX9uLewLl8YE7
	hXiBKud1yFePgDvLprIQUWdd6nVfPB5FLjmmc5rzn8rU6avY53238kbOx8vrlhgFTmf
	MiA1FWj+yUnZ9LgmAS+sZhkmHHjFme3FTNLWY1uU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c262625-ba30289e-3565-44c0-a490-defc0aa6ad77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc740b54c2b524d3993f32cc37a95725932408f4dcc9cbb82a3f39c72478e1f6
Date: Tue, 15 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647323784
