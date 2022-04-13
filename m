Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A90B23BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 03:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649821738;
	h=To:Subject:From:Message-Id:Date;
	bh=/fklm1BjT8aIKWler6RutPqo9adOyupYLeLUUkpxLZ4=;
	b=g2r0pDfzgbnSfLp32xVXSYxwmo8NweYaOpQfaj5jHhPx2EMSrxiBpA9asJuHaOqF
	kfL5OQaU4NBNmDKExudy8ajUjpHzjULexZ47BKLvd+aBR3P7k9g1nRUOVzz89euTlQw
	m7UemsQOaJe1xuQpBo7l8TXbxn1LkX+00qEEZ6zA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649821738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/fklm1BjT8aIKWler6RutPqo9adOyupYLeLUUkpxLZ4=;
	b=ItvpXoQwPD04u95FkbAbrVt/rI7eMOOG4Mx2Qa+BHmMiKc6aNpMQSfU3hJ/QsM5Z
	0GUdBD22YgWQguvtOWO3dZfPbu1ZPUFmXcRPj1ZiWpmK1oYmamwDVkwSrKt10SlVLSG
	LV83BE8W7dx5fN7pfHKhH8o/pxvsh2vSRyRT1u8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802109e50d-4bbd8935-f824-4def-b528-8348a7d62b2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18b4c6e7bf460b98d3dae9c09a8baab71e20cabf5440e6ef65532ea9410886af
Date: Wed, 13 Apr 2022 03:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649821738
