Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEB83D73
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 23:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649375458;
	h=To:Subject:From:Message-Id:Date;
	bh=teQoInJS4fFy2CdKgzM/9UgB/oP/sO5bE8FXMo0E8+A=;
	b=BtDba+1ltPmts2Yzc8uuJhIKfPXES6C1A5xMtYULwRcJhziuChkiNxXHrGca4meS
	i5JWwkMe4M0a8KAUcT2KvG2D99uWpSVD36Hce/UIBsvEWbg6Tx7pXXkiS61+O2c1bAa
	92jRGwnpmHisuWqlljwKYpax0ta4RwdDVHx2I5OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649375458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=teQoInJS4fFy2CdKgzM/9UgB/oP/sO5bE8FXMo0E8+A=;
	b=ZckHgn1pPPbuZroqgQIrpOUEJy+C1wmjpE0Fyt8jG8gSkPcmIqOn4bmNyRed+LPz
	K4mda35FE1Os6MMolh7NBhINyx3niNm5DhoYVGgfuLwVkqdXDgGDEYZ7WGDXD6Adp/S
	gQ5Ee+a1bruDFhD8jBP32TdMPBwxiMffYK/InHv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180067033be-6bb6fa4a-622a-4f51-820a-2de96745e627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6132ba0a4909984e3a60dab9ad4a17b74702575f7dc77e52dc7be8e4e14de970
Date: Thu, 7 Apr 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649375458
