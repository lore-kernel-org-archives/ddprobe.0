Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E8A42BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647977485;
	h=To:Subject:From:Message-Id:Date;
	bh=9rBg/TA1Q0kSvizSQUjQ9xCZYKzhkSbPXjxn5euuPa8=;
	b=UrB1BtHyuNTLjl+Ku8vUqD8VLv/Vpv93mMzfVd14c7+OqkeAz5+oOtUONaWQOcee
	84bEQQYfeab90w6jJ3wxQJnPTzaLsBFBX93RteOULYEnQflYB8IAnJ5rcUFMPZXJqq3
	I8/29xQ17lNI8ho5+8a9XWCvsDQuNeuV53bgAR34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647977485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9rBg/TA1Q0kSvizSQUjQ9xCZYKzhkSbPXjxn5euuPa8=;
	b=HRiQaz8P+uHEEKrPDsbXJWMR8s13sHfnP5RhH9zerCHHJE8ioddhCQ3lHHkodPLD
	IQ6UA7TcaK3cy+XReDCMSiS18GKTndpE/HL6a3RUWVfKdTzSkQEYP7GO9d7CLi3ZQlb
	9l2okgAcfcLynR/lSv9ibdds0KcWZy1unXbw9drY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb31cd201-f9ba46df-fa8d-4f15-b20f-2894654cb1a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bec15ff15364b63a31f1b97df0b8e6a7442dd018e5278b0ba851373c9900bda4
Date: Tue, 22 Mar 2022 19:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647977484
