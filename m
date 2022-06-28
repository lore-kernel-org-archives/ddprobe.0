Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB7E6AA3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656454012;
	h=To:Subject:From:Message-Id:Date;
	bh=RAuW101AiDxO6ZMHK6EUW3ZyG5mgtFS//7fuTGtv7dQ=;
	b=cfjfX+pNEqkIzYH1codKgHqAz9EkgsCIIGaB+6RuBQQwCvJWkhJOxTf38OmDRwia
	IBUmf3tANcvPm0PTAJCKUyhveDJD8Sq6QjmZE2aVat+GWvg28FLfQkBd5VHtH7GrMb2
	hEGwAi5zNQQBPNzLW6SeNXZfu3cij81BQTxgYRpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656454012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RAuW101AiDxO6ZMHK6EUW3ZyG5mgtFS//7fuTGtv7dQ=;
	b=EXYBIS8713CuAZWS3Sbrg3/nN1q8S2vQ+nkvjvVaoHXlvZ2AfFUuK0pIB8J1LdpO
	LPH646n6/VdkeAv+QMftz1KJgyf+9SWZTJk4Z4V49TV5+qipYKLdl/fcLXKM5W7lhDK
	FWjqhbzSN6KLVaCM/QjY8lYq4kqAjHceex59QIJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac5a5d67-a586a9ae-bc05-44d4-8202-1fe88629a6b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0a49832203cf3ddece9b60a08c771fe4394ccbe9dd1f1df3bddda134e0e733d
Date: Tue, 28 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656454012
