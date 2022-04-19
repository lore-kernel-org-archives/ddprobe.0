Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0075FEA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 05:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650347758;
	h=To:Subject:From:Message-Id:Date;
	bh=IGUXxEYI9JMzYbgHPWgJ1t5n4rPCSzt4I+Znhxro5Jk=;
	b=iCrf2eX8YCqIi7NiZhj3YS4T5DX6ufL+YI1g2q3A1dyaPj5BWUUXBfOze3rTF70h
	Zq7F/F8Me67rV5Y/wfNa5/0OTOoz5sGo1ULqg3tNG8tawu4O1ThSY7h1y3n417EL7s9
	D4enU8T61p6YHjraxwzBfQzzbvhpxbZMTWSNrOQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650347758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IGUXxEYI9JMzYbgHPWgJ1t5n4rPCSzt4I+Znhxro5Jk=;
	b=ATW6YOwZihO3yMt93tnvBOINr+cRUc0U5LD5rmfnm8NU3jnef8wyxztU8JSVrOWa
	84MpwKrsCcjaF+0GpKhhvvtqsi9zUAuQ2DbYhaatz9lQpnEx0vMl+f9ydC7tHGtSCBN
	5qk+ARy5yq+rYeBEeSt7OCRvmsxTqVPmj+BtUiP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180406452a0-5a08160f-5cf5-4f77-a60f-1f9a71add513-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a1f7e78014f5289aa735eda008beb36f25c386efac5861ff64dec274f75ad77
Date: Tue, 19 Apr 2022 05:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650347758
