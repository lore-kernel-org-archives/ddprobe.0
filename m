Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC6B7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650188998;
	h=To:Subject:From:Message-Id:Date;
	bh=ihkFrKg9uCXNG/AGduYSZZY7yUUjgusnPI6bSUqOu6E=;
	b=YrJOQin/3ObIsia80i5/AAE7HAFD7L4JdZvS+7p9EEb/V3yQW23SlYTBV5uSehJH
	rzj8iuBRXEbCuqt/txrKfupIoSqWAQpgsHEBsjIARjYkfVWs/IB2Tnf27EVFOCGGKr3
	WNiuAiMXHm+j2ulzUaqDfJeOXP1ntVP9hWMyONOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650188998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ihkFrKg9uCXNG/AGduYSZZY7yUUjgusnPI6bSUqOu6E=;
	b=gn9ATiK90e8SbSxpHPX+hsZbSNksmlb1zuqaQuxFpxB8U94aVGbhpVqu/gil+J1B
	PmvqAYbzaxaYsxTMeFj2Q1Rp7q0JawbkOFo4Y8y8SWINJgfWA0DYKRS765/odxWbIFU
	ZYx19uO73VTS0syLCppCQNWe6eNrRwgMEiY/aLCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036edd6a1-33d069fe-dba3-47d7-a0b3-0ab1ca097026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 743c78f570cf9436285cd208c8e8fe17aac5e49903a7774ed23b58162985532b
Date: Sun, 17 Apr 2022 09:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650188998
