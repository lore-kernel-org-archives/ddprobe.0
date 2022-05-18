Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282884697
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 14:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652884499;
	h=To:Subject:From:Message-Id:Date;
	bh=JN4JF1BxPGO7EoFC1vTDEziEdxx5nWzb2ypSD46qUBQ=;
	b=EVya7mkZXwdkFtv8T3sqN2TXO9nodP4gzp8Mym+LMRj6oEMmqffRXzlxpM4CLd78
	p+uTHKSo2NwHajSXq8gOoJaG9D1+PODZG1ciRBlCS4lq2uNYCf96Tr9XkTHjV3Ir9/d
	pu6rFaCujndd/hI9Ql5n0yD0JGGcJUu1CHt7Bo/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652884499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JN4JF1BxPGO7EoFC1vTDEziEdxx5nWzb2ypSD46qUBQ=;
	b=b6R8DCvHP/qBPjsJpFcvQpd8Nr1mUll2aCdcga3ptZcdxNwLP9yt9h9FpESq3zgO
	869sjqka2XdLHcu5+Vd7uezLCUdmlaTLcGLoUTyEnKyMPDTF/bCP/3xECxNBhFIP9mk
	cSGZ6tjyYV+IGJVD7Qxp0MijylMhgMJqvWfDNj78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d797eb41-da4cb177-2361-437b-bf6a-9e893902ce96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ba440550f23f4cf39ffecb5df56d22c091033fa9ce80cb5ffed5381b6141f34
Date: Wed, 18 May 2022 14:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652884499
