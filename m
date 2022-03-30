Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCAD7B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 15:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648655458;
	h=To:Subject:From:Message-Id:Date;
	bh=twRxXSbXMHtrfYUHHKmwiIxJgqlwQjFeVZqvQdzT0Ts=;
	b=c88g+XYZ4W5aBkhNdGagDCxmuIpaV8ltYUHNutANVRO03F6jOZs4AQV3HSAyZ+3O
	AbpZPvawlo+eho0Ska1u0hkDU4I4YJBa+JNSVr3x0H4biFlxCIhcX9iH9/boPw4Zah8
	ZWkLs9mbZmHmsqX5opbmUTRzRZ3G0bkwKm/Bi55I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648655458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twRxXSbXMHtrfYUHHKmwiIxJgqlwQjFeVZqvQdzT0Ts=;
	b=LVyEp+bTBme6ky3mfLJ1gm24pxsTm0z14INBTNxQ96rHCv7rbWJauD0dFhv9SC5i
	w6kTOM6sklaKibKxCJEvig5yU1YeO+3koP4OnmU6JCu5lyDR4YXMaTlL08KQrjS+TEU
	PtQkdoC1oZufgUfNmI9/CCZ4qTX5CgPEB5vFjYGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb85dfed-240dd6f4-6a71-4b63-a5d0-73fcbc301d54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da33526d65147e63699aadc3367e3aaff7f842f3fe28b47b57b29df549e43f36
Date: Wed, 30 Mar 2022 15:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648655458
