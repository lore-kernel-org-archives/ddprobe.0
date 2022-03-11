Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF097E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646980584;
	h=To:Subject:From:Message-Id:Date;
	bh=+4Y7Enl5zTGixG9xUHgIxUcMjXlO9i9dYDXHjIpDTU4=;
	b=Gu5E/l76CwX+M4FevbqfE86ynARcdUD9APc4sCqiM8N42oAQV2gRWQMsltjKOvWR
	V7dokbZZbF1lDlTfDXM/CEYI3S0jf+DLrKxjSrxag8gdg2KlBk6XXsmz8x94Wxp+KU1
	8a3G+gxRfI1tvTyPyeUa8PJW6bUSgmZZj4AvIF4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646980584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4Y7Enl5zTGixG9xUHgIxUcMjXlO9i9dYDXHjIpDTU4=;
	b=SRigF3KNQ5o4wQRC0hJYVrvE0xWEHU/rA3ngT5FfpQTmSej0jiu/Y5o7wBpGcuiN
	zH0k4iiJFO1W1J3m842oK4ddG/coUlsinYZUROR/04xiLKqm5UTVHNDp6VFhyitTt35
	qhJA6uF7UKvftNt+vqTvPGmmvrnZSTJvJdnOL7us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77b1552e-baea32f7-27b4-449c-8950-14d785edf019-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 766b9399ef4c7f83543248a6b5bc3c522c77130b1ca7bd38e2ca0861555f2d08
Date: Fri, 11 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646980584
