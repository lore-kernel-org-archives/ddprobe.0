Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FF54688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 19:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654457039;
	h=To:Subject:From:Message-Id:Date;
	bh=FpqdzWz93Fpmy9HxAhoRCcVE/PHRGewccpCzOTDxdSI=;
	b=YJmocW6eCjKFdW68+jg9tap5qiByVLy96qYc1K0pGdWdQmZtlKfAHcZ+mc3Lpjmd
	LDwXOIRNq3s8jvSt/L9EP+n/1VdChHW3mdlDDNGv8HPjQI5nyXz60sFbqr/PaiY+Q0a
	eAgMFFFU/mSkEOAc3rS2nNOXjArT3aDMZeNEaSog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654457039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FpqdzWz93Fpmy9HxAhoRCcVE/PHRGewccpCzOTDxdSI=;
	b=ejXRERyCUWdkE/OEsQ/BambCyPghmKYOyn46L9JIkS6Xl8K2yuRgRIFqwo5XJY/X
	wy+LT3gOsp7UpmQ7N9ifoqxLC+Dz6TYjFWlygvORwnV2DL7Z5O/klJOGf3SVlPW3m16
	pEyjtpxi60p6GBgmK1iGNPotymMROKysh5xPvjSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813552f9db-3dd692ba-8f46-41f5-88e6-8874fcaa22ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 987e2e12b97f3e657e84c351367361c63b227096ebf2652fd59d3542dad95ea4
Date: Sun, 5 Jun 2022 19:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654457039
