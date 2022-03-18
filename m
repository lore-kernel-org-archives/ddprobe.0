Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DE44C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647617484;
	h=To:Subject:From:Message-Id:Date;
	bh=BkqsSF5FPt/IC6huOx9TYbGZqx1Y3lXRP82Pl7E9mJI=;
	b=KCWFfPDC5yk308Y+kpwn+u5IuJ4kdxsaO3/LKR0zlvWESXSBm7UFcPcZFSR7ftFX
	hCa8Zf0AhnPJJgWcKGY/SL9TymmeNmIbw15aFltOGEdu4zr9NGK2TQ0QEFdRASUhf3a
	6IpO/Kb6D5HUqCLgyqAT33EmcN+IGkqRt4Exyxjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647617484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BkqsSF5FPt/IC6huOx9TYbGZqx1Y3lXRP82Pl7E9mJI=;
	b=VyoFA4JExB5o7IW1T7r2lQ52Btk8JiIb9/gLgtER+dF0NzQycsZ1slxtJ5621z5A
	7y5tPx/OmvoEZAGi4tm8jemo/RytFmEvFxSQnbkXBFZovCdRRzuElYdqOt72hwsnxI5
	ETdKvqc0YxFXMBGjF5gR/npGzKSjT8KUEerCAatA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9da7a7ae-013b8bbf-c1cb-4dc1-b366-f185cc6bfe89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d4fb5e623edcbfa72d51f6615143af0107b2db158c5cdce3951a992ac48392d
Date: Fri, 18 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647617484
