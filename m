Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767903D98
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659211852;
	h=To:Subject:From:Message-Id:Date;
	bh=zMNnFzrvUsUHsEtI5Jgxk2zw1dxIq6ck3E80joyocDc=;
	b=kCRVhm7jvROge3+NPeLE0dOPwK0YFVN0yfLZy04tnuSYtj/HBFHmkQeuPSBR1mC4
	Y770wJfMpKIqUlOX2Q/CViDpAuETItKlFJ1+ejdN58otf/sVuf1qb0c/lHthTaq8vii
	WytmYvrrFCTNqdrHdBpnlpwuRrntgc5UR7Dw4VoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659211852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMNnFzrvUsUHsEtI5Jgxk2zw1dxIq6ck3E80joyocDc=;
	b=cwnGV9NuEkp4y5jcx6xeWJG3v1cfy9/5sEDMj1rVUKvIcuDsgJAJhxJzoRRidLmm
	PFYRMKoOgBXqw9VgGDof2Q+aMDdCRVvfZwQ0lM7D/ZV8ZhagLCFwJLFsOrzFDJorZ1n
	iSfALRYp65ojiiM6fJOkQZzgz66K4M/BOGUKiW4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250bbab05-45c3913f-82c6-49dd-be08-a473aeb4dccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d8dcfb2b2b75cd04578af6444a6a1ae0e92a255492610a1ea53241cf8da332
Date: Sat, 30 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659211852
