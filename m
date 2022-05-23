Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DC736C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 04:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653281519;
	h=To:Subject:From:Message-Id:Date;
	bh=CsJ/8OMGdLA1ucGq+4ePXFveXPMC20eBUPhfP3QK7yA=;
	b=i5JXRQtOpRMDONcMct/Fgc3xOiaaevLL0zS9tVYcZODP4M+v58q6kzYRFj6ratW+
	rhKP/LLSbsyPGKEjXqoutbxqab/9jPKU8vX1cjeBp8Rl41MWLIIdmX4LdAJ2s8uaymj
	3Swt8r4fAkPwuhVvZk8kEbVBsSw7xcj6ncLCpNY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653281519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CsJ/8OMGdLA1ucGq+4ePXFveXPMC20eBUPhfP3QK7yA=;
	b=alDYnJodQTtRysxh5ncbnXsnzgEdLv6ArX8twbRy2nVdmnzp+8aQclEG9eEQihzd
	IhxbxL6h+je3DUlHqhKHn76I5TytEDws0N0Yr8bAXsQMKKUfsAB4TBHmfXYQ2PixhUz
	9Uvm+0xNbv+R3Nk5jxZKh8/ISeEMz45v85ViWa9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef41f6fe-961ac736-9104-41dc-9b5e-c6c66e0d2fcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bb12a34268847652a76b7226732ada3401ad7c93ff07fe83d1cc202b6cd0f2b
Date: Mon, 23 May 2022 04:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653281519
