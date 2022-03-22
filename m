Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF05F4293
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647973585;
	h=To:Subject:From:Message-Id:Date;
	bh=czTtvJoRE46QQ3u0D6jDt8DIlCv0PPlX+qoX4KqWnvQ=;
	b=G4CVNLjsObbaaCFVnKaLvTV2FbL/SVSuwKyf1HUAngDknmhzmjvXs4++PQl4FsOl
	2eVt+yTYKzjvd/cDwP09OGIVZn7GydrXEASv8o84A4+2e+2G3JAsKjT2+hjvIS4kJaM
	RE48gUfMHQH2xjezCl2x3nTIeK0Y5TWErNwgMhHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647973585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=czTtvJoRE46QQ3u0D6jDt8DIlCv0PPlX+qoX4KqWnvQ=;
	b=T7CqxiyedFGJ4+ts7/WycYSwuVxyd9nW7babCgypGQhkeFA+h47av1Yp8PM0dBm1
	0Mvde1u/HVn456isG84+nwNPgeQtsA4tTA5mfVrsx/PB0RIr6WNq+OuLyJ1nkUE5V2Y
	dmtgUFHVVbu7BKFnojxtBKvCyK+wtYrkljGeg8+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2e14f8c-c1470997-6b08-49e0-9607-a6ff891938f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49c1e293d487c352d7cdde38d89d49b2f3200d230e7797c02959e7891c7587b6
Date: Tue, 22 Mar 2022 18:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647973584
